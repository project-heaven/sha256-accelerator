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

    let digest = main_hash_computation(INITIAL_DIGEST, &message_schedule);

    println!("Message digest:");
    print_hex(&digest.as_flattened());
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
type MessageSchedule = [Word; 64];

fn prepare_message_schedule(message: [Word; 16]) -> MessageSchedule {
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

const INITIAL_DIGEST: Digest = [
    [0x6a, 0x09, 0xe6, 0x67],
    [0xbb, 0x67, 0xae, 0x85],
    [0x3c, 0x6e, 0xf3, 0x72],
    [0xa5, 0x4f, 0xf5, 0x3a],
    [0x51, 0x0e, 0x52, 0x7f],
    [0x9b, 0x05, 0x68, 0x8c],
    [0x1f, 0x83, 0xd9, 0xab],
    [0x5b, 0xe0, 0xcd, 0x19],
];

const K: [Word; 64] = [
    0x428a2f98u32.to_be_bytes(),
    0x71374491u32.to_be_bytes(),
    0xb5c0fbcfu32.to_be_bytes(),
    0xe9b5dba5u32.to_be_bytes(),
    0x3956c25bu32.to_be_bytes(),
    0x59f111f1u32.to_be_bytes(),
    0x923f82a4u32.to_be_bytes(),
    0xab1c5ed5u32.to_be_bytes(),
    0xd807aa98u32.to_be_bytes(),
    0x12835b01u32.to_be_bytes(),
    0x243185beu32.to_be_bytes(),
    0x550c7dc3u32.to_be_bytes(),
    0x72be5d74u32.to_be_bytes(),
    0x80deb1feu32.to_be_bytes(),
    0x9bdc06a7u32.to_be_bytes(),
    0xc19bf174u32.to_be_bytes(),
    0xe49b69c1u32.to_be_bytes(),
    0xefbe4786u32.to_be_bytes(),
    0x0fc19dc6u32.to_be_bytes(),
    0x240ca1ccu32.to_be_bytes(),
    0x2de92c6fu32.to_be_bytes(),
    0x4a7484aau32.to_be_bytes(),
    0x5cb0a9dcu32.to_be_bytes(),
    0x76f988dau32.to_be_bytes(),
    0x983e5152u32.to_be_bytes(),
    0xa831c66du32.to_be_bytes(),
    0xb00327c8u32.to_be_bytes(),
    0xbf597fc7u32.to_be_bytes(),
    0xc6e00bf3u32.to_be_bytes(),
    0xd5a79147u32.to_be_bytes(),
    0x06ca6351u32.to_be_bytes(),
    0x14292967u32.to_be_bytes(),
    0x27b70a85u32.to_be_bytes(),
    0x2e1b2138u32.to_be_bytes(),
    0x4d2c6dfcu32.to_be_bytes(),
    0x53380d13u32.to_be_bytes(),
    0x650a7354u32.to_be_bytes(),
    0x766a0abbu32.to_be_bytes(),
    0x81c2c92eu32.to_be_bytes(),
    0x92722c85u32.to_be_bytes(),
    0xa2bfe8a1u32.to_be_bytes(),
    0xa81a664bu32.to_be_bytes(),
    0xc24b8b70u32.to_be_bytes(),
    0xc76c51a3u32.to_be_bytes(),
    0xd192e819u32.to_be_bytes(),
    0xd6990624u32.to_be_bytes(),
    0xf40e3585u32.to_be_bytes(),
    0x106aa070u32.to_be_bytes(),
    0x19a4c116u32.to_be_bytes(),
    0x1e376c08u32.to_be_bytes(),
    0x2748774cu32.to_be_bytes(),
    0x34b0bcb5u32.to_be_bytes(),
    0x391c0cb3u32.to_be_bytes(),
    0x4ed8aa4au32.to_be_bytes(),
    0x5b9cca4fu32.to_be_bytes(),
    0x682e6ff3u32.to_be_bytes(),
    0x748f82eeu32.to_be_bytes(),
    0x78a5636fu32.to_be_bytes(),
    0x84c87814u32.to_be_bytes(),
    0x8cc70208u32.to_be_bytes(),
    0x90befffau32.to_be_bytes(),
    0xa4506cebu32.to_be_bytes(),
    0xbef9a3f7u32.to_be_bytes(),
    0xc67178f2u32.to_be_bytes(),
];

type Digest = [Word; 8];

fn main_hash_computation(digest: Digest, message_schedule: &MessageSchedule) -> Digest {
    let mut a = digest[0];
    let mut b = digest[1];
    let mut c = digest[2];
    let mut d = digest[3];
    let mut e = digest[4];
    let mut f = digest[5];
    let mut g = digest[6];
    let mut h = digest[7];

    for t in 0..64 {
        let t1 = wrapping_add_words([h, bsig1(e), ch(e, f, g), K[t], message_schedule[t]]);
        let t2 = wrapping_add_words([bsig0(a), maj(a, b, c)]);
        h = g;
        g = f;
        f = e;
        e = wrapping_add_words([d, t1]);
        d = c;
        c = b;
        b = a;
        a = wrapping_add_words([t1, t2]);

        println!("Intermediate t1_t2_a_b_c_d_e_f_g_h value #{}:", t + 1);
        print_hex(&[t1, t2, a, b, c, d, e, f, g, h].as_flattened());
        println!();
    }

    [
        wrapping_add_words([digest[0], a]),
        wrapping_add_words([digest[1], b]),
        wrapping_add_words([digest[2], c]),
        wrapping_add_words([digest[3], d]),
        wrapping_add_words([digest[4], e]),
        wrapping_add_words([digest[5], f]),
        wrapping_add_words([digest[6], g]),
        wrapping_add_words([digest[7], h]),
    ]
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
