# dr-quine (42 cursus)

> A quine is a computer program (a kind of metaprogram) whose output and source code are identical. As a challenge or for fun, some programmers try to write the shortest quine in a given programming language. The operation that consist of simply opening the source file and displaying it is considered cheating. More generally, a program that uses any data entry cannot be considered a valid quine. A trivial solution is a program whose source code is empty. Indeed, theexecution of such a program produces for most languages no output, that is to say the source code of the program.

The C part is mandatory, but the Assembly part isn't. My ASM part is very ugly though.

## Running

### First

```sh
cd first/C
clang -Wall -Wextra -Werror Colleen.c -o Colleen ; ./Colleen
```

```sh
cd first/ASM
nasm -f macho64 Colleen.s -o Colleen.o ; clang -Wall -Wextra -Werror Colleen.o -o Colleen ; ./Colleen
```

### Second

```sh
cd second/C
clang -Wall -Wextra -Werror Grace.c -o Grace ; ./Grace
```

```sh
cd second/ASM
nasm -f macho64 Grace.s -o Grace.o ; clang -Wall -Wextra -Werror Grace.o -o Grace ; ./Grace
```

### Third

```sh
cd third/C
mkdir out
cd out
clang -Wall -Wextra -Werror ../Sully.c -o Sully ; ./Sully
```

```sh
cd third/ASM
mkdir out
cd out
nasm -f macho64 ../Sully.s -o Sully.o ; clang -Wall -Wextra -Werror Sully.o -o Sully ; ./Sully
```

## Ressources and further reading

[Wikipedia article for Quine (computing)](https://en.wikipedia.org/wiki/Quine_(computing))
