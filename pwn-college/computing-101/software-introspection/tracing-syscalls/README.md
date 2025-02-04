# **strace and Syscall Tracing**

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
