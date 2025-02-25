// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract HorseStore {
    uint256 numberOfHouses;
    function updateHorseName(uint256 newNumberOfHorses) external {
        numberOfHouses=newNumberOfHorses;
    }
    function readNumberOfHorses() external view returns(uint256){
        return numberOfHouses;
    }
}