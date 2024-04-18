// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test,console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test{
    uint256 number=0;
    FundMe fundme;
function setUp() external{
    fundme=new FundMe();
    number=2;
    console.log(number);
}
function testNumber() public {
    assertEq(number,2);
}
function testMinimumUSD() public{
    console.log(fundme.MINIMUM_USD(),5e18);
    console.log(msg.sender);
    assertEq(fundme.MINIMUM_USD(),5e18);
}
function testOwner()public{
    console.log(fundme.i_owner());
    console.log(address(this));
    assertEq(fundme.i_owner(),address(this));
}
}