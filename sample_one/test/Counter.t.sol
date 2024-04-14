// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    // Counter public counter;

    // function setUp() public {
    //     counter = new Counter();
    //     counter.setNumber(1);
    // } 

    // function test_Increment() public {
    //     console.log("number is:",counter.number());
    //     console.log("hii vishwa");
    //     counter.increment();
    //     assertEq(counter.number(), 2);
    // }

    // function testFuzz_SetNumber(uint256 x) public {
    //     counter.setNumber(x);
    //     assertEq(counter.number(), x);
    // }
    Counter public counter;
    uint256 public number=1;
    
    function setUp()external{
        //deploying a contract
        counter=new Counter();
        number=2;
        console.log("number is:",number);
        //executing the increment function of the contract 2 times
    counter.increment();
    counter.increment();
    }
    function testDemo()public{
        console.log(number);
        console.log("hello world");
        console.log("smart contract number is :",counter.number());
        //checking whether the number is as aspected or not? if error then not else yes
        assertEq(counter.number(),2);
    }
}
