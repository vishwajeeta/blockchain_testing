// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {User} from "../src/User.sol";
contract CounterScript is Script {
    function setUp() public {
        
    }

    function run() public {
        vm.startBroadcast();
        new User("vishwa");
        vm.stopBroadcast();


    }
}