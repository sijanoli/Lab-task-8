ORG 100h               ; Origin, to specify that the program starts at 100h (COM file format)
MOV AH, 09h            ; Function 09h of INT 21h is used to display a string
MOV DX, OFFSET msg_input ; Load the address of the message
INT 21h                ; Call DOS interrupt to print the message
; Initialize the two-digit number (e.g., 42) in the data section
MOV AL, '7'            ; First digit of the two-digit number
MOV BL, '4'            ; Second digit of the two-digit number (use a different register)
; Display the first digit
MOV DL, AL             ; Move the first digit to DL
MOV AH, 02h            ; Function 02h of INT 21h is used to print a single character
INT 21h                ; Call DOS interrupt to print the character
; Display the second digit
MOV DL, BL             ; Move the second digit to DL (BL now holds the second digit)
MOV AH, 02h            ; Function 02h of INT 21h is used to print a single character
INT 21h                ; Call DOS interrupt to print the character
JMP EndProgram         ; Jump to the end of the program
EndProgram:
MOV AH, 4Ch            ; Function 4Ch of INT 21h terminates the program
INT 21h                ; Call DOS interrupt to exit
msg_input DB 'The two-digit number is: $'
END                    ; End of program  
