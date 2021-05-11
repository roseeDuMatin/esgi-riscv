# Exercise 1
# Use a system call like write

# Segments when to use .data / .text?
# ===================================
#
# .data for data known at compilation, such as strings or arrays of known size.
# .text for the code. :)

# We indicate that we want to store data in the data segment.
.data

# the .asciz directive allows you to declare a string ending with a 0x00, '\0' in ASCII.
message: .asciz "Hello ASM from .data"
.text # <- code segment.

# Exercise: Observation in RARS
#
# - What is the base address of the msg chain? His end address? 
#   => The base 0x10010000, end : 0x1001000c
# - In which segment of memory is it?
#   => The segment 0x0000fc10
# - What are the hexadecimal values ​​present in .data?

# la: Load Address, load an address (label) into a register
la a0, message # argument of the system call
li a7, 4  # system call number 4 according to the RARS printString doc
ecall      # used to switch to kernel mode to make the system call

# Bonus: Now display a number, you will need the documentation.
li a0 1
li a7 1
ecall