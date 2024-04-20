// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

contract User{

    string name;
    address owner;
    uint256[] hello;

    constructor(){
        owner=msg.sender;
    }
    function UpdateName(string memory _name) public{
        name=_name;
    }
    function getName() public view returns(string memory) {
        return name;
    }

    function addArray(uint256 _number) public{
        hello.push(_number);
    }
    function showArray(uint256 _num)public view returns(uint256){
        return hello[_num];
    }
    function removeArray() public{
        hello.pop();
    }
}