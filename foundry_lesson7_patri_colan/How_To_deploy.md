# To deploy smart contract 
## start Anvil
```
anvil
```

```
forge script script/dpss_gas.s.sol --rpc-url  127.0.0.1:8545
```

## dpss_gas.s.sol (file)
```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;
import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
contract DeploySecureIPFSStorage is Script {
    function run()external {
        vm.startBroadcast();
        new FundMe();
        vm.stopBroadcast();
    }
}
```