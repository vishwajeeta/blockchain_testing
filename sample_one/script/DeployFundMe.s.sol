// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;
import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
contract DeployFundMe is Script {
    //in an order to run the script
    function run() external{
        vm.startBroadcast();
        new FundMe();
        vm.stopBroadcast();
    }

}