print_string:
  pusha
  mov ah, 0x0e
  
begin_loop:  
  mov al, [bx]
  cmp al, 0
  je exit_print_string
  int 0x10
  add bx, 1
  jmp begin_loop

exit_print_string:

  popa
  ret
