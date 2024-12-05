.global _start

_start:
    // Initializing the values in R0 and R1
    // Setting R0 to 10
    MOV R0, #10            

    // Setting R1 to 20
    MOV R1, #20              

    // Storing the decimal number 15 in R5 for further operations
    MOV R5, #15

    // Comparing the values in R0 and R1
    // Performing R0 - R1 to set the condition flags
    CMP R0, R1               

    // Branching to 'greater' if R0 is greater than R1
    BGT greater              
    
    // Branching to 'lesser' if R0 is less than R1
    BLT lesser               
    
    // Branching to 'equal' if R0 is equal to R1
    BEQ equal                 

greater:
    // Shifting R5 left by 2 bits when R0 is greater than R1
    LSL R5, R5, #2          

    // Proceeding to terminate the program
    B terminate              

lesser:
    // Shifting R5 right by 1 bit when R0 is less than R1
    LSR R5, R5, #1         

    // Proceeding to terminate the program
    B terminate              

equal:
    // Rotating R5 right by 1 bit when R0 equals R1
    ROR R5, R5, #1          

    // Proceeding to terminate the program
    B terminate              

terminate:
    // Ending the program by triggering the sys_exit system call
    // Setting R7 to 1 for the exit syscall number
    MOV R7, #1               

    // Calling the exit system call using SVC #0
    SVC #0                   
