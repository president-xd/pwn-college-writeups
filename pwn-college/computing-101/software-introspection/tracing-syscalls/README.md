## **What is `strace`?**
- `strace` is a Linux utility that traces system calls made by a program.
- It provides details on:
  - What system calls are invoked.
  - The parameters passed to each syscall.
  - The return values from these syscalls.

## **How to Use `strace`**
To trace a program's syscalls:
```sh
strace /path/to/program
```
### **Example**
```bash
strace /tmp/your-program
```

### **Example Output:**
```sh
execve("/tmp/your-program", ["/tmp/your-program"], 0x7ffd48ae28b0 /* 53 vars */) = 0
exit(42) = ?
+++ exited with 42 +++
```

- `execve(...)`: Executes the given program (`your-program`).
- `exit(42)`: Program terminates with exit code `42`.

## Syscalls in Strace Output
- **Syntax:**
```sh
system_call(parameter1, parameter2, ...) = return_value
```

- The output includes:
  - **System call name** (e.g., `execve`, `exit`).
  - **Parameters passed** (inside parentheses).
  - **Return value** (after `=`).

## **Challenge Task Solution**
- Using `strace` to check the syscalls in the executable `/challenge/trace-me/`.
```sh
hacker@introspecting~tracing-syscalls:~$ strace /challenge/trace-me
execve("/challenge/trace-me", ["/challenge/trace-me"], 0x7ffc9aee4220 /* 25 vars */) = 0
alarm(32534)                            = 0
exit(0)                                 = ?
+++ exited with 0 +++
```

- Submitting the number to `/challenge/submit-number` executable as parimeter/
```sh
hacker@introspecting~tracing-syscalls:~$ /challenge/submit-number 32534
CORRECT! Here is your flag:
pwn.college{cpapdSIJCL4Ciqt9gBNwmVopBlG.dFzN4UDL5cDMzgzW}
```
