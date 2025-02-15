# Uncommon Assembly Bug: Potential Access Violation

This repository demonstrates a subtle bug in assembly code related to array indexing. The bug can lead to an access violation if the index used to access the array falls outside the valid bounds of the array.  This situation is less common because it often requires a specific combination of index and base address values.

## Bug Description:
The code attempts to access an array element using the `mov eax, [esi+edi*4]` instruction.  This instruction assumes that `esi` points to the base address of an array, and `edi` holds an index which should be within the array's bounds. However, if `edi` holds a negative value or is larger than the number of valid elements, the access will fall outside the array bounds and will result in a crash or unpredictable behavior.

## Solution:
The solution involves adding appropriate bounds checking before accessing the array element. This ensures that the index is within the valid range before the array is accessed.

## How to reproduce:
1.  Assemble the `bug.asm` code and create the executable
2. Run the executable with various inputs for `esi` and `edi`. Experiment with large or negative values for `edi` to trigger the crash.