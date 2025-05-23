// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract HorseStoreYul {
    uint256 numberOfHouses;
    function updateHorseName(uint256 newNumberOfHorses) external {
        // numberOfHouses=newNumberOfHorses;
        assembly{
            sstore(numberOfHouses.slot,newNumberOfHorses)
        }
    }
    function readNumberOfHorses() external view returns(uint256){
        // return numberOfHouses;
        assembly{
            let num := sload(numberOfHouses.slot)
            mstore(0,num)
            return(0,0x20)
        }
    }
}