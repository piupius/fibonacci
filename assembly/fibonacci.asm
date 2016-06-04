; Made by Luiz Peres
; You can run the code below at http://www.tutorialspoint.com/compile_assembly_online.php

; MMMMMMMMMMMMOMOOOQQQQQQQQQQQQQQ$$$$QQQQQQQQQQ$$OO$OOMMMMMMMMMMMMMMMMMM
; MMMMMMMMMMMMOOOO$Q$QQQQQQQQQQQQQQQQQQQQQQQQQQQQ$OOMOMMMMMMMMMMMMMMMMMM
; MMMMMMMMMMMOOMMOO$QQQQQQQQQQQQQQQ$QQQQQQQQQQQQ$QOO$MOMMMMMMMMMMMMMMMMM
; MMMMMMMMMOOMMOOOO$Q$QQQQQQQQQQQQQQ$$$Q$$$$$$$$$QOO$MOMMMMMMMMMMMMMMMMM
; MMMMMMMMMMMOOOO$$QQQQQQQQQQQQQQ$$$QQQQ$$$$$$$$Q$OOMHMMMMMMMMMMMMMMMMMM
; MMMMMMMOOOOO$$QQQQQQQQQQQQQQQ$QQQ$$$$$OCCCCCCOOOQMNMMMMMMMMMMMMMMMMMMM
; MMMMMMMOMOO$QQ$$QQQQQQQQQQQ$QQ$$$O?7>!!!::::::!>$NMMMHMMMMMMMMMMMMMMMM
; MMMMMMOM$O$Q$QQQQQQQQQQQQQ$Q$$OC>!::::---:::!!::::7$NMMNMMMMMMMMMMMMMM
; MMMMMMNM OOQ$QQQQQQQQQQQQ$Q$OC>::-;.        .;:!!::-!CNMMNMMMMMMMMMMMM
; MMMMMMM$MHO$Q$$$$$$QQQQQ$Q$OC!-;               .;:!!:::CNMMMMMMMMMMMMM
; MMMMMMMMM7>O$Q$$$$$$Q$Q$Q$O?-.                    ;:!!::!$MMMMMMMMMMMM
; MMMMMMMH-  :?O$$$$$$$QQQ$O?.                        ;:!:::?MMMMMMMMMMM
; MMMMMMQ.     ;-:::;7O$Q$O7.                           -!:!-7MMMMMMMMMM
; MMMMMH;......      .?$$$O!............................ -!:!:7MMMMMMMMM
; MMMMMMNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNM> -!:!-?MMMMMMMM
; $HMMMMMMMMMMMMMMMMMM7::>!OMMQ$HMMH$QMMMMMMMMMMMMMMMMMM?  :::!:QMMMMMMM
; QHHHMMMMMMMMMMMMMMMM-    7MMHQQHHHQQHHNMMMMMMMMMMMMNCC:  ;!:::7MMMMMMM
; MN$$HMMMMMMMMMMMMMHN-    7HHMMN$$NMM$OQMMMMMMMMMMNHO     .!::::HMMMMMM
; O$MMQOOMMMMMMMMMMC          NMMMMQO$MMHOONMMMMMMM-       ;!::!:$MMMMMM
; NMMMMMMMMMMMMMM:-.          --7MMMMMMMMMMMMMMMO-:        ::::!:CMMMMMM
; MMMO?????????77.->?CCOOCC?>:. .???????????????:         -!:::!:CMMMMMM
; MMM!         -?$$OC??????CO$$C-                       .:!::::!:CMMMMMM
; MMM?       -$QC?777777777777?CQC                      :!:::::!:CMMMMMM
; MMM$      :HO777?????????????7?Q7                     :::::::::?MMMMMM
; MMMH     .QO7?????????????????7QO                     .!:::::::>MMMMMM
; MMMM     !H???77777????????777OH$?;                    ;!:::::::QMMMMM
; MMMN-    :H$OO$OOC?77777777?C$QQ$$C.                    ::::::::7MMMMM
; MMM$::    C; .;-?QQ$$OOOO$$QQQ$$Q$O!                   .::::::::-HMMMM
; MMMO-::;        ?$QQQQQQQQQQ$$QQ$Q$?                   :!::::::>QMMMMM
; MMMN?>!>!-;.   :O$Q$$$$$$$$QQQQQ$Q$C                 .:!::::!:OMMMMMMM
; MMMMMMMM$:!!::-7O$Q$QQQQ$QQQQQQQ$$$?                ;:!::::::-$MMMMMMM
; MMMMMMMMH:-::!!>O$QQ$QQ$$$Q$QQQ$Q$O!             .-:!:::::!>7ONMMMMMMM
; MMMMMMMMMHC7!::-!CO$$$$OCO$QQQQQ$$C           .-:!!::!:>$NNMMMMMMMMMMM
; MMMMMMMMMMMMMHQO>:!>>>>!:?O$$QQ$$?;    ..;;-::!!::::::>MMMMM MMMMMMMMM
; MMMMMMMMMMMMMMMMMQ>:::::::>?O$OC7:-:::::!!!!:::::!>>7ONMMMMMMMMMMMMMMM


SYS_EXIT  equ 1
SYS_WRITE equ 4
STDOUT    equ 1

segment .data 

  nl db 0xA,0xD 
  len_nl equ $- nl

segment .bss
  n1  resb 4 ; 4 bytes for our vars
  n2  resb 4
  res resb 4
  
  n_nrs resb 1 ; number of numbers to print out
  cnt   resb 1 ; counter of digits in the number

section	.text
	global _start       ;must be declared for using gcc
	
_start:     ;tell linker entry point
  
  mov eax, 0x10
  mov [n_nrs], eax ; initialize the number of numbers to print out
  
  mov eax, 0x0
  mov [n1], eax ; n1 = 0
  inc eax
  mov [n2], eax ; n2 = 1
  mov [res], eax ; res = 1
  
  mov eax, 0x0
  mov [cnt], eax ; cnt = 0
  
  jmp calc_n ; print the first number
  
calc_n: ; prepare the number to print out
  
  mov eax, [cnt] 
  inc eax
  mov [cnt], eax ; increment the counter

  mov eax, [res]
  cmp eax, 0xA
  jb calc_last   ; if res < 10 go to the last calc
  
  mov eax, [res]
  xor edx, edx
  mov ebx, 10
  div ebx        ; res / 10. Example 123 / 10, eax 12, edx 3
  
  add edx, '0'   ; add '0' to the remainder
  push edx       ; push edx into the stack
  
  mov [res], eax ; res = res / 10
  
  jmp calc_n     ; do the loop

calc_last:
  mov edx, [res] 
  add edx, '0'    ; res += 48 (get the ASCII representation of the number)
  push edx        ; push edx into the stack
  
  mov eax, [cnt]
  inc eax
  mov [cnt], eax  ; increment the counter
  
  jmp print_n     ; print the number out

print_n:
  mov eax, [cnt]
  dec eax
  mov [cnt], eax  ; cnt--
  cmp eax, 0x0
  jbe print_nl       ; if cnt <= 0 then we are done with this number 

  pop edx
  mov [res], edx ; pop edx from the stack and store it in res

  ; print res
  mov eax, SYS_WRITE        
  mov ebx, STDOUT
  mov ecx, res         
  mov edx, 1        
  int 0x80
  jmp print_n

print_nl:
  mov eax, SYS_WRITE        
  mov ebx, STDOUT
  mov ecx, nl         
  mov edx, len_nl       
  int 0x80
  jmp do_calc
  
do_calc:
  mov eax, [n_nrs]
  dec eax
  cmp eax, 0x0
  jbe exit         ; if n_nrs <= 0 exit
  
  mov [n_nrs], eax ; n_nrs--
  
  mov eax, [n1] ; eax = n1  
  mov ebx, [n2] ; ebx = n2
  mov [n1], ebx ; n1 = ebx (keep n2, before n2 is equal to n1 + n2)
  add ebx, eax  
  mov [n2], ebx ; n2 += n1
  mov [res], ebx
  jmp calc_n
  
exit:    
  mov eax, SYS_EXIT   
  xor ebx, ebx 
  int 0x80           ; call kernel
  
