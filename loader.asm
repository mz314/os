 [bits 64]


extern main
global _start

_start:
  call main     ; Call our kernel's main() function
  hlt    