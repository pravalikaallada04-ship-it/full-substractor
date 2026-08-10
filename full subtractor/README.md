# Full Subtractor Using Verilog

## 📌 Project Description

A **Full Subtractor** is a combinational logic circuit used to subtract three 1-bit binary inputs.

It performs the operation:

```text
A - B - Bin
```

where:

* **A** = Minuend
* **B** = Subtrahend
* **Bin** = Borrow input

The circuit produces two outputs:

* **Difference**
* **Borrow Out**

## 🔹 Inputs and Outputs

| Signal     | Type   | Description       |
| ---------- | ------ | ----------------- |
| A          | Input  | Minuend           |
| B          | Input  | Subtrahend        |
| Bin        | Input  | Borrow input      |
| Difference | Output | Difference result |
| Bout       | Output | Borrow output     |

## 🔹 Boolean Expressions

The logic equations are:

```text
Difference = A XOR B XOR Bin

Borrow Out = (~A & B) | (~A & Bin) | (B & Bin)
```

## 🔹 Truth Table

| A | B | Bin | Difference | Bout |
| - | - | --- | ---------- | ---- |
| 0 | 0 | 0   | 0          | 0    |
| 0 | 0 | 1   | 1          | 1    |
| 0 | 1 | 0   | 1          | 1    |
| 0 | 1 | 1   | 0          | 1    |
| 1 | 0 | 0   | 1          | 0    |
| 1 | 0 | 1   | 0          | 0    |
| 1 | 1 | 0   | 0          | 0    |
| 1 | 1 | 1   | 1          | 1    |

## 🔹 Block Diagram

```text
             ┌─────────────┐
A ──────────►│             │
B ──────────►│    FULL     │──────► Difference
Bin ─────────►│ SUBTRACTOR │
             │             │──────► Borrow Out
             └─────────────┘
```

## 🔹 Verilog Implementation

The Full Subtractor is implemented using Verilog HDL with continuous assignment statements.

## 🔹 Simulation

The testbench checks all **8 possible combinations** of the three inputs.

The expected results are compared with the Full Subtractor truth table.

## 🔹 Expected Simulation Output

```text
A B Bin | Difference Borrow
---------------------------
0 0  0  |     0        0
0 0  1  |     1        1
0 1  0  |     1        1
0 1  1  |     0        1
1 0  0  |     1        0
1 0  1  |     0        0
1 1  0  |     0        0
1 1  1  |     1        1
```

## 🛠️ Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave (optional)
* GitHub

## 🎯 Applications

Full Subtractors are used in:

* Arithmetic Logic Units (ALUs)
* Binary subtractors
* Digital calculators
* Microprocessors
* Digital computers
* Arithmetic circuits

## 🔹 Advantages

* Performs subtraction with borrow input.
* Can be connected with other subtractors for multi-bit subtraction.
* Simple combinational logic circuit.
* Useful as a basic building block in digital arithmetic circuits.

## 🔹 Conclusion

The Full Subtractor successfully performs the subtraction of three 1-bit binary inputs, including the borrow input from a previous stage. The Verilog design was tested using a testbench, and all eight possible input combinations produced the expected Difference and Borrow outputs.
