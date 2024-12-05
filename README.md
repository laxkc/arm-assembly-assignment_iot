# Assignment 3 - ARM Assembly Program

## Overview
This ARM assembly program compares two values (`R0` and `R1`) and performs different bitwise operations on a third value (`R5`) based on the comparison:

- If `R0 > R1`, it performs two logical left shifts on `R5`.
- If `R0 < R1`, it performs one logical right shift on `R5`.
- If `R0 == R1`, it performs a right rotation on `R5`.

The program terminates by making a system call.

## Setup Instructions

### 1. Clone the Repository
First, clone the repository to your local machine using the following command:
```bash
git clone https://github.com/laxkc/arm-assembly-assignment_iot.git
```

### 2. Install Required Tools
Ensure that you have the necessary tools installed on your Linux system. You will need:

- **ARM Cross Compiler**: If you're using a Raspberry Pi or an ARM device, you may need to install the ARM cross-compiler.

- **GCC** (optional): The GNU Compiler Collection for C and assembly programs.

To install GCC, run the following command:
```bash
sudo apt-get install gcc
```

### 3. Compile the Code:
   Run the following command in the terminal:
   ```bash
   gcc -o assignment.o assignment.s -nostartfiles -e _start
```
   
### 4. Run the Program: 
After compiling, execute the program using:
```bash
./assignment.o
``` 