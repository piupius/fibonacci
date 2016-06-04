+#>+# initialization

[
  <[>>+>+<<<-]>>>[<<<+>>>-] copy the 0th cell to the 2nd cell
  <<[>+>+<<-]>>[<<+>>-] copy the 1st cell to the 2nd cell
  <# go back one cell to iterate through the infinite loop
]
  
 Made by Luiz Peres. :)

 To test the code above, you can follow the steps below:

 - Go to the website: https://sange.fi/esoteric/brainfuck/impl/interp/i.html (do not forget to activate the debug mode '#')
 - Use a brainfuck interpreter: https://github.com/luizperes/BrainfuckInterpreter
 - Use a brainfuck compiler (with LLVM): https://github.com/luizperes/brain/tree/v0.5

 Note that Brainfuck by default has cells of only ONE byte, so it will print correctly up to 89,
 if the byte is signed or 233 if it uses unsigned byte. For the Brain compiler, it uses a signed
 32 bits integer. So it will print out nice numbers :)