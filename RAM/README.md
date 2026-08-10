# RAM – Verilog HDL

## Description

This project implements a simple 8-bit RAM using Verilog HDL.

The RAM contains **16 memory locations**, with each location storing **8 bits of data**.

## Features

* 8-bit data width
* 4-bit address width
* 16 memory locations
* Synchronous write operation
* Asynchronous read operation
* Write Enable (`WE`) control

## Memory Organization

```text
Address Width = 4 bits
Data Width    = 8 bits

Total Locations = 2^4 = 16

Address  Data
0000     8-bit
0001     8-bit
0010     8-bit
...
1111     8-bit
```

## Inputs

| Input     | Description          |
| --------- | -------------------- |
| `clk`     | Clock signal         |
| `we`      | Write Enable         |
| `addr`    | 4-bit memory address |
| `data_in` | 8-bit input data     |

## Output

| Output     | Description       |
| ---------- | ----------------- |
| `data_out` | 8-bit output data |

## Working

### Write Operation

When `we = 1`, data is written into the selected memory address on the rising edge of the clock.

```text
WE = 1
       ↓
Address → RAM → Data
```

### Read Operation

When `we = 0`, the data stored at the selected address is available at `data_out`.

## Example

```text
Address 0 → AA
Address 1 → 55
Address 2 → F0
```

## Files

* `ram.v` – Main RAM design
* `ram_tb.v` – RAM testbench
* `README.md` – Project documentation

## Tools Used

* Verilog HDL
* VS Code
* Icarus Verilog / Vivado / ModelSim

## Applications

* Digital systems
* Microprocessors
* Embedded systems
* Data storage
* FPGA memory design

## Author

Maneesha

