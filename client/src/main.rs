use serialport::{StopBits, available_ports};

fn main() {
    let ports = available_ports().expect("Failed to fetch available ports");
    let port_name = &ports[0].port_name;

    let mut port = serialport::new(port_name, 9600)
        .stop_bits(StopBits::Two)
        .open()
        .unwrap_or_else(|e| panic!("Failed to open serial port at {}: {}", port_name, e));

    port.write(
        &hex::decode("6162636465000000000000000000000000000000000000000000000000000000").unwrap(),
    )
    .unwrap_or_else(|e| panic!("Failed to write to the serial port at {}: {}", port_name, e));

    port.flush().expect("Failed to flush port buffer");

    let mut buffer = [0; 256];

    loop {
        let available_bytes = port.bytes_to_read().unwrap_or_else(|e| {
            panic!(
                "Failed to request byte count from the serial port at {}: {}",
                port_name, e
            )
        });

        if available_bytes == 0 {
            continue;
        }

        let read_bytes = port.read(&mut buffer).unwrap_or_else(|e| {
            panic!(
                "Failed to read from the serial port at {}: {}",
                port_name, e
            )
        });

        println!(
            "Read {} bytes from the serial port: {}",
            read_bytes,
            String::from_utf8(buffer[..read_bytes].to_vec())
                .expect("Received wrong data from the serial port")
        );
    }
}
