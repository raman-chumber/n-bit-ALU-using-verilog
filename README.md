# N-bit ALU using Verilog
Modeling and validating a synthesizable N-bit ALU capable of performing the following operations:    

                 Control Lines                 Operation              
                        00                      Addition                       
                        01                      Subtract               
                        10                      Bitwise AND                    
                        11                      Bitwise OR    
          
This is a parameterized design with width of data inputs be set by a parameter.  The default value for the parameter is 16.    This module has three inputs: two N-bit signed numbers represented in 2's complement format (A & B) and a 2-bit control (CTRL).  It produces four outputs: a N-bit result (R),  an overflow flag (O), a sign flag (N), and a Zero flag (Z).  The result is in 2's complement format as well.  The overflow bit is set when the result of addition or subtraction is out of range.  The sign flag is set when the result is negative.  The zero flag is set when the result is zero. 

Verifying the functionality of a 32-bit version of the model Using simulation. It is done by changing the width parameter during simulation.  Used the following test vectors for the simulation results:

                 Addition & subtraction

                 A = FFFFF000   B = FFFFFFFF
                 A = FFFFFFFF   B = 000F00F0
                 A = 67676767   B = 12431243
                 A = AAAAAAAA   B = EFABCD19
                 A = FFFFFFFF   B = 00000001
                 A = FFFFFFFF   B = FFFFFFFF
                 A = FFFFFFFC   B = FFFFFFFC
                 A = FFFF0000   B = 00001342
                 A = 01234567   B = 00080808

                 bitwise AND , bitwise OR:

                 A = FFFFFFFF    B = 0A0AB0B0
                 A = ABCD4545    B = 12383588
                 A = F0F0F0F0    B = CFCFCFCF
                 A = 00000000    B = 11000001          

