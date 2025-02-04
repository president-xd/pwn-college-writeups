Next, lets move on to GDB. GDB stands for the GNU Debugger, and it is typically used to hunt down and understand bugs. More specifically, a debugger is a tool that enables the close monitoring and introspection of another process. There are many famous debuggers, and in the Linux space, gdb is by far the most common.

We'll learn gdb step by step through a series of challenges. In this one, we'll focus on simply launching it. That's done as so:
```sh
hacker@dojo:~$ gdb /path/to/binary/file
```

## **Challenge Task Solution**
- Debugging file `/challenge/debug-me` with GDB
```sh
hacker@introspecting~starting-gdb:~$ gdb /challenge/debug-me
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


You successfully started GDB!
Here is the secret number: 18563
Submit that with /challenge/submit-number. Goodbye!
```

- Submitting the secret using `/challenge/submit-number` ELF
```sh
hacker@introspecting~starting-gdb:~$ /challenge/submit-number 18563
CORRECT! Here is your flag:
pwn.college{8L950p8G7T06d7L-y_K_qoFGReK.QXxMjM1EDL5cDMzgzW}
```
