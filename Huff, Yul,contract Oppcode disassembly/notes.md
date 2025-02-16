## what are opCode?
- matchine level code
- matchine don't understand solidity insted understand matchine code
- every 1 bite or 2 char in hax makes an opcode all these matchine redable instructions are known as opCode
- all the instructions in EVM  are in opCode.
- contract Creation Code and Deployed Bytecode are bytecode
## contract Creation Code
## Deployed Bytecode

# cheet-sheep
```cmd
$ cast to-base 0x60 dec
96
```
dec ->decimal
bin ->binary
opcode->decimal->operation/NAME
60->96->PUSH1

if 0x608060
60->80->60
PUSH1->how much->PUSH1

if 0x6080604052
60->80->60->40->52
PUSH1->how much->PUSH1->how much->MSTORE

# introduction to Huff
- Rewrite HorseStore in Huff

## what is function deipatching?

```
//what is function selector
updateHouseNumber(uint256) -> 2 of these is function signature and we can hash them to make function selector
```
**Example:-**
```cmd
cast sig "updateHouseNumber(uint256)"
0xde30e683
```

*macro essentially are functions
this is how we define macro which is basically a function in huff
<!-- its essentiall huff but for redability using solidity -->

```solidity
#define macro MAIN()=takes(0) returns(0){}
```
- Huff syntax highlighting extension in VsCode

## The code copy OpCode
`39 or CODECOPY` is the opCode for contract creation bytecode


## Note:-
when we compile any smart contract most smart contract are compiled into 2~4 different sections
- contract Creation -> tell blockchain to store smart contract
- Runtime ->
- Metadata ,constructor,,etc
solidity adds `INVALID` opCode between different sections,so its earier to tell difference in section.
contract creation bytecode is responsible for taking our smart contract and `saving` it on-chain.