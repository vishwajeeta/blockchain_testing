// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

import {Test,console} from "forge-std/Test.sol";
import {User} from "../src/hello.sol";
contract UserTest is Test{
    User user;
    function setUp()public{
        user=new User();
    }
    function testGetName()public view{
        assertEq(user.getName(),"");
    }
    function testUpdateName()public{
        user.UpdateName("vishwa");
        console.log(user.getName());
    }
    function testName1()public{
        user.UpdateName("vishwa");
        assertEq(user.getName(),"vishwa");
    }

    function testArray()public{
        user.addArray(1);
        console.log(user.showArray(0));
        assertEq(user.showArray(0),1);
        user.removeArray();
        vm.expectRevert();
        console.log(user.showArray(0));
    }
    function testArrayLoop()public{
        for(uint256 i=0;i<10;i++)
        {
        user.addArray(i);
        console.log(user.showArray(i));
        assertEq(user.showArray(i),i);
        }
        for(uint256 i=10-1;i>0;i--)
        {
        console.log(user.showArray(i));
        user.removeArray();
        }
        user.removeArray();
        vm.expectRevert();
        console.log(user.showArray(0));
    }
}