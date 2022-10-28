# Dr-Quine

A quine (or self-replicating program) is a program that prints its own source code.<br>
The objective of this project is therefore to create 3 quine with different specificities<br>

- **Colleen**: When executed, the program must display on the standard output an output identical to the source code of the file used to compile the program.
- **Grace**: When executed, the program writes in a file named Grace_kid.c/Grace_kid.s the source code of the file used to compile the program.
- **Sully**: When executed the program writes in a file named Sully_X.c/Sully_X.s. The X will be an interger given in the source. Once the file is created, the program compiles this file and then runs the new program (which will have the name of its source file). Stopping the program depends on the file name : the resulting program will be executed only if the integer X is greater than 0.

## Usage

- Clone Repository
```bash
git clone https://github.com/vvaucoul/Dr-Quine && cd Dr-Quine
```

- Compilation
```bash
make
```
