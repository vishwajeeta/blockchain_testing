// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {User} from "../src/User.sol";
contract MyContract is Test{
    User user;
    function setUp() public  {
        user =new User("vishwa");
    }
    function testUserName()public view{
        assertEq(user.getName(),"vishwa");
    }
    function testUserAddress()public view{
        console.log(user.owner());
        assertEq(user.owner(),address(this));
    }
    function testUpdateUserName()public {
        console.log(user.getName());
        assertEq(user.updateUserName("vishwajeet"),"vishwajeet");
        console.log(user.getName());
    }

}