mov ecx, array_size ; Load the size of the array into ecx
mov eax, edi ; Copy the index into eax
cmp eax, 0 ; Check if the index is non-negative
jge check_upper_bound
jmp error_handler ; Jump to error handler if the index is negative
check_upper_bound:
 cmp eax, ecx ; Compare index with array size
jge error_handler ; Jump to error handler if the index exceeds the size
mov eax, [esi+edi*4] ; Access the array element only if the index is valid
jmp end_process
error_handler:
; Handle the error appropriately, e.g., display an error message or exit the program
end_process: