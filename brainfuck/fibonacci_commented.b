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

 MMMMMMMMMMMMOMOOOQQQQQQQQQQQQQQ$$$$QQQQQQQQQQ$$OO$OOMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMOOOO$Q$QQQQQQQQQQQQQQQQQQQQQQQQQQQQ$OOMOMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMOOMMOO$QQQQQQQQQQQQQQQ$QQQQQQQQQQQQ$QOO$MOMMMMMMMMMMMMMMMMM
 MMMMMMMMMOOMMOOOO$Q$QQQQQQQQQQQQQQ$$$Q$$$$$$$$$QOO$MOMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMOOOO$$QQQQQQQQQQQQQQ$$$QQQQ$$$$$$$$Q$OOMHMMMMMMMMMMMMMMMMMM
 MMMMMMMOOOOO$$QQQQQQQQQQQQQQQ$QQQ$$$$$OCCCCCCOOOQMNMMMMMMMMMMMMMMMMMMM
 MMMMMMMOMOO$QQ$$QQQQQQQQQQQ$QQ$$$O?7>!!!::::::!>$NMMMHMMMMMMMMMMMMMMMM
 MMMMMMOM$O$Q$QQQQQQQQQQQQQ$Q$$OC>!::::---:::!!::::7$NMMNMMMMMMMMMMMMMM
 MMMMMMNM OOQ$QQQQQQQQQQQQ$Q$OC>::-;.        .;:!!::-!CNMMNMMMMMMMMMMMM
 MMMMMMM$MHO$Q$$$$$$QQQQQ$Q$OC!-;               .;:!!:::CNMMMMMMMMMMMMM
 MMMMMMMMM7>O$Q$$$$$$Q$Q$Q$O?-.                    ;:!!::!$MMMMMMMMMMMM
 MMMMMMMH-  :?O$$$$$$$QQQ$O?.                        ;:!:::?MMMMMMMMMMM
 MMMMMMQ.     ;-:::;7O$Q$O7.                           -!:!-7MMMMMMMMMM
 MMMMMH;......      .?$$$O!............................ -!:!:7MMMMMMMMM
 MMMMMMNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNM> -!:!-?MMMMMMMM
 $HMMMMMMMMMMMMMMMMMM7::>!OMMQ$HMMH$QMMMMMMMMMMMMMMMMMM?  :::!:QMMMMMMM
 QHHHMMMMMMMMMMMMMMMM-    7MMHQQHHHQQHHNMMMMMMMMMMMMNCC:  ;!:::7MMMMMMM
 MN$$HMMMMMMMMMMMMMHN-    7HHMMN$$NMM$OQMMMMMMMMMMNHO     .!::::HMMMMMM
 O$MMQOOMMMMMMMMMMC          NMMMMQO$MMHOONMMMMMMM-       ;!::!:$MMMMMM
 NMMMMMMMMMMMMMM:-.          --7MMMMMMMMMMMMMMMO-:        ::::!:CMMMMMM
 MMMO?????????77.->?CCOOCC?>:. .???????????????:         -!:::!:CMMMMMM
 MMM!         -?$$OC??????CO$$C-                       .:!::::!:CMMMMMM
 MMM?       -$QC?777777777777?CQC                      :!:::::!:CMMMMMM
 MMM$      :HO777?????????????7?Q7                     :::::::::?MMMMMM
 MMMH     .QO7?????????????????7QO                     .!:::::::>MMMMMM
 MMMM     !H???77777????????777OH$?;                    ;!:::::::QMMMMM
 MMMN-    :H$OO$OOC?77777777?C$QQ$$C.                    ::::::::7MMMMM
 MMM$::    C; .;-?QQ$$OOOO$$QQQ$$Q$O!                   .::::::::-HMMMM
 MMMO-::;        ?$QQQQQQQQQQ$$QQ$Q$?                   :!::::::>QMMMMM
 MMMN?>!>!-;.   :O$Q$$$$$$$$QQQQQ$Q$C                 .:!::::!:OMMMMMMM
 MMMMMMMM$:!!::-7O$Q$QQQQ$QQQQQQQ$$$?                ;:!::::::-$MMMMMMM
 MMMMMMMMH:-::!!>O$QQ$QQ$$$Q$QQQ$Q$O!             .-:!:::::!>7ONMMMMMMM
 MMMMMMMMMHC7!::-!CO$$$$OCO$QQQQQ$$C           .-:!!::!:>$NNMMMMMMMMMMM
 MMMMMMMMMMMMMHQO>:!>>>>!:?O$$QQ$$?;    ..;;-::!!::::::>MMMMM MMMMMMMMM
 MMMMMMMMMMMMMMMMMQ>:::::::>?O$OC7:-:::::!!!!:::::!>>7ONMMMMMMMMMMMMMMM

