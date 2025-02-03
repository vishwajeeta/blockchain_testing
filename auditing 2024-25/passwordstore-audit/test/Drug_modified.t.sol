// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test, console} from "forge-std/Test.sol";
import "../src/Drug_modified.sol";

contract DrugTest is Test {
    DrugSensitivityData drug;

    function setUp() public {
        drug = new DrugSensitivityData();
    }

    function tests_entryCount() public view {
        // console.log(drug.s_entryCount());
        assertEq(drug.s_entryCount(), 0);
    }

    function tests_admin() public view {
        console.log(msg.sender);
        console.log(drug.i_admin());
        console.log(address(this));
        assertEq(drug.i_admin(), address(this));
    }

    uint256 drugId = 1;
    string drugName = "hi";
    string target = "hello";
    string pathway = "buyy";
    string cellLine = "how";
    string tcgaDesc = "kind";
    uint256 lnIc50 = 2;
    uint256 auc = 5;
    // address contributor;
    // bool verified;

    function testaddDrugData() public {
        drug.addDrugData(drugId, drugName, target, pathway, cellLine, tcgaDesc, lnIc50, auc);
    }

    function testgetDrugData() public {
        console.log(drug.getDrugData(1));
    }
}
