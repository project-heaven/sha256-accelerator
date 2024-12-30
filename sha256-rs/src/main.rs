#![feature(iter_array_chunks)]
#![feature(slice_as_chunks)]

use clap::Parser;
use colored::Colorize;

#[derive(Parser)]
struct Args {
    #[arg(short, long)]
    message: String,
}

const HEX_PRINT_CHUNK_SIZE: usize = 4;
const HEX_PRINT_CHUNKS_IN_ROW: usize = 4;

fn main() {
    let args = Args::parse();

    let message = decode_hex(&args.message);

    println!("Input:");
    print_hex(&message);
    println!();

    let message = pad_message(message);

    println!("Padded message:");
    print_hex(&message);
    println!();

    let (message_block, rem) = message.as_chunks::<4>();
    assert_eq!(rem.len(), 0);
    let message_block: [Word; 16] = message_block.try_into().expect("Wrong message length");
    let message_schedule = prepare_message_schedule(message_block);

    println!("Message schedule:");
    print_hex(&message_schedule.as_flattened());
    println!();
}

fn pad_message(mut message: Vec<u8>) -> Vec<u8> {
    let original_message_len = message.len();

    message.push(0b10000000);

    let mut padding = original_message_len.next_multiple_of(64) - original_message_len;
    if padding < size_of::<u64>() {
        padding += 64;
    }

    message.append(&mut vec![0; padding - size_of::<u64>() - 1]);
    message.append(&mut (original_message_len as u64 * 8).to_be_bytes().to_vec());

    message
}

type Word = [u8; 4];

fn prepare_message_schedule(message: [Word; 16]) -> [Word; 64] {
    let mut schedule = [[0; 4]; 64];

    for t in 0..16 {
        schedule[t] = message[t];
    }

    for t in 16..64 {
        schedule[t] = wrapping_add_words([
            ssig1(schedule[t - 2]),
            schedule[t - 7],
            ssig0(schedule[t - 15]),
            schedule[t - 16],
        ]);
    }

    schedule
}

fn wrapping_add_words<const N: usize>(words: [Word; N]) -> Word {
    words
        .into_iter()
        .reduce(|a, b| {
            let a = u32::from_be_bytes(a);
            let b = u32::from_be_bytes(b);
            a.wrapping_add(b).to_be_bytes()
        })
        .expect("Invalid word count")
}

fn ch(x: Word, y: Word, z: Word) -> Word {
    [0, 1, 2, 3].map(|i| (x[i] & y[i]) ^ (!x[i] & z[i]))
}

fn maj(x: Word, y: Word, z: Word) -> Word {
    [0, 1, 2, 3].map(|i| (x[i] & y[i]) ^ (x[i] & z[i]) ^ (y[i] & z[i]))
}

fn bsig0(x: Word) -> Word {
    let x = u32::from_be_bytes(x);
    (x.rotate_right(2) ^ x.rotate_right(13) ^ x.rotate_right(22)).to_be_bytes()
}

fn bsig1(x: Word) -> Word {
    let x = u32::from_be_bytes(x);
    (x.rotate_right(6) ^ x.rotate_right(11) ^ x.rotate_right(25)).to_be_bytes()
}

fn ssig0(x: Word) -> Word {
    let x = u32::from_be_bytes(x);
    (x.rotate_right(7) ^ x.rotate_right(18) ^ (x >> 3)).to_be_bytes()
}

fn ssig1(x: Word) -> Word {
    let x = u32::from_be_bytes(x);
    (x.rotate_right(17) ^ x.rotate_right(19) ^ (x >> 10)).to_be_bytes()
}

fn decode_hex(data: &str) -> Vec<u8> {
    if data.starts_with("0x") {
        hex::decode(&data[2..])
    } else {
        hex::decode(data)
    }
    .expect("Failed to parse message")
}

fn print_hex(data: &[u8]) {
    let hex = hex::encode(data);
    let hex = hex
        .chars()
        .array_chunks::<2>()
        .map(|byte| byte.into_iter().collect::<String>());

    let mut dark = false;
    for (i, byte) in hex.enumerate() {
        let byte = if dark {
            byte.bright_blue()
        } else {
            byte.yellow()
        };
        print!("{}", byte);

        if (i + 1) % (HEX_PRINT_CHUNKS_IN_ROW * HEX_PRINT_CHUNK_SIZE) == 0 {
            println!();
        } else if (i + 1) % HEX_PRINT_CHUNK_SIZE == 0 {
            print!(" ");
        }

        dark ^= true;
    }

    println!();
}
