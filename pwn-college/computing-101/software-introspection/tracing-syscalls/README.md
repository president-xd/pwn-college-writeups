### What is strace?
strace is a Linux utility that traces system calls made by a program.
- It provides details on:
      - What system calls are invoked.
      - The parameters passed to each syscall.
      - The return values from these syscalls.

How to Use strace
To trace a program's syscalls:
sh
Copy
Edit
strace /path/to/program
Example:
sh
Copy
Edit
strace /tmp/your-program
Output:
pgsql
Copy
Edit
execve("/tmp/your-program", ["/tmp/your-program"], 0x7ffd48ae28b0 /* 53 vars */) = 0
exit(42) = ?
+++ exited with 42 +++
execve(...): Executes the given program (your-program).
exit(42): Program terminates with exit code 42.
Understanding Syscalls in strace Output
Syntax:
Copy
Edit
system_call(parameter1, parameter2, ...) = return_value
The output includes:
System call name (e.g., execve, exit).
Parameters passed (inside parentheses).
Return value (after =).
Key Syscalls in This Challenge
execve(...): Starts a new program.
exit(...): Terminates a program with an exit code.
alarm(seconds): Sets a timer. After the specified seconds, the program receives a signal to terminate.
