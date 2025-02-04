Debuggers, including gdb, observe the debugged program as it runs to expose information about its runtime behavior. In the previous level, we automatically launched the program for you. Here, we will tone down the magic somewhat: you must start the execution of the program, and we'll do the rest (e.g., recover the secret value from it).

When you launch gdb now, it will eventually bring up a command prompt, that looks like this:
```sh
(gdb)
```
 
You start a program with the starti command:
```sh
(gdb) starti
```

Give it a try now, and we'll configure gdb to magically extract the secret value once the program is running.

## **Challenge Task Solution**
- First Debugging the program
```sh
hacker@introspecting~starting-programs-in-gdb:~/Desktop$ gdb /challenge/debug-me
GNU gdb (Ubuntu 9.2-0ubuntu1~20.04.2) 9.2
Copyright (C) 2020 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
Type "show copying" and "show warranty" for details.
This GDB was configured as "x86_64-linux-gnu".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
    <http://www.gnu.org/software/gdb/documentation/>.

For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from /challenge/debug-me...
(No debugging symbols found in /challenge/debug-me)
```
- Then Running the `starti` command on gdb terminal
```sh
(gdb) starti


You successfully started GDB!
Here is the secret number: 22472
Submit that with /challenge/submit-number. Goodbye!
```
- Then Submiting the number
```sh
hacker@introspecting~starting-programs-in-gdb:~/Desktop$ /challenge/submit-number 22472
CORRECT! Here is your flag:
pwn.college{U-af5Phkylx5JmhDf06EXRhnDkc.QXyMjM1EDL5cDMzgzW}
```
