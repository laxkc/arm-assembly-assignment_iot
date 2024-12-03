.global _start

_start:
    // used to initialize the values in R0 and R1
    MOV R0, #10            
    MOV R1, #20              

    // storing the decimal
    MOV R5, #15

    // Compare the values in R0 and R1
    // for the values in R0 and R1 compared
    CMP R0, R1               

    BGT greater              
    BLT lesser               
    BEQ equal                

greater:
 
    LSL R5, R5, #2          
    B terminate              // terminatating the program

lesser:
    // Performing the one logical right shift on R5
    LSR R5, R5, #1         
    B terminate              // Terminating the program

equal:
    
    ROR R5, R5, #1           // Rotate R5 right by 1 bit
    B terminate              // Terminating the program

terminate:
    // ending the program
    MOV R7, #1               
    SVC #0                  
