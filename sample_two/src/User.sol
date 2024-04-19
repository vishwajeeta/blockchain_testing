// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract User {
    string  s_name;
    address immutable public owner;
    constructor(string memory _name){
        s_name=_name;
        owner=msg.sender;
    }

    function getName()external view returns(string memory){
        return s_name;
    }
    function updateUserName(string memory _Name)external  returns(string memory){
        s_name=_Name;
        return s_name;
    }

}
