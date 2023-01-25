.V file folders are separate if the project file did not open.

a. Throughput: The number of encrypted or decrypted text produced every second. 
Ans. 10 (It is not a pipelines structure; it is an iterative structure)
b. Latency: The number of clock cycles required to perform one encryption or decryption 
Ans. 10 (Number of encryption and decryption cycles)
c. Area: Area on FPGA consumed by the architectures. 
Ans. 1384

Working:
The AES is an incremental cipher. It incorporates substitution–a permutation network. It consists of a sequence of connected processes, some of which require exchanging specified inputs for outcomes (substitutions) and others requiring shuffling bits around (permutations).
All of AES's calculations are done in bytes rather than bits. As a result, AES considers a plaintext block's 128 bits as 16 bytes. For matrix processing, these 16 bytes are organised into four columns and four rows.
Both encryption and decryption require 10 cycles.
In our code inside module ‘AES’, in the first 9 rounds i goes from 0 to 8 and the last round occurs at i = 9. The result of the last round acts as an input for the decryption module.
In the first 9 rounds there are 4 modules
• Key generation
• Byte Substitution
• Shift Rows
• Mix columns
The last round is the same as the first 9 rounds, just the mix column module is absent.

Byte Substitution
By looking up a predefined table (S-box) provided in design, the 16 input bytes are updated. A four- row, four-column matrix is the outcome.
Shift rows
Each of the matrix's four rows is shifted to the left. Any 'breaking off' entries is re-inserted on the right-hand side of the row.
The first row is kept the same.
   
The second row has been moved one (byte) to the left.
The third row has been moved two spaces to the left.
The fourth row has been moved three spaces to the left.
The outcome is a new matrix made up of the same 16 bytes that are being shifted in regard to each other.

Mix Columns
A particular mathematical function is now used to alter each column of four bytes. This function takes four bytes from one column as input and returns four entirely new bytes that replace existing column. As a result, a new matrix with 16 additional bytes is created.

Addroundkey
The matrix's 16 bytes are now treated as 128 bits, and they are XORed with the round key's 128 bits. The ciphertext is the output if this is really the final round. Otherwise, the 128 bits are interpreted as 16 bytes, and the cycle begins again.

Decryption Process
Whenever i has reach >=9 i.e., when decryption starts and j goes from 9 to 0.
When j==0 decryption stops.
The reverse process of decrypting an AES ciphertext is analogous to the reverse process of encryption. Each round consists of four processes that are performed in reverse order.
Last key is getting stored ask otherwise it is being stored in the keyout. At last, the decrypted data is XORed with Key.

TEST BENCH
The top module is called in the test bench and is given a clock.