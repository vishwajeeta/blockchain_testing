## format Solidity code
```
forge fmt
```

## How to start anvil blockchain environment
```
anvil
```

## How to deploy smart contract on anvil blockchain

### To deploy smart contract 
```
forge script script/HorseStore.s.sol --rpc-url  127.0.0.1:8545
```

#### HorseStore.s.sol (file)
```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;
import {Script} from "forge-std/Script.sol";
import {HorseStore} from "../src/HorseStore.sol";
contract DeployHorseStore is Script {
    function run()external {
        vm.startBroadcast();
        new HorseStore();
        vm.stopBroadcast();
    }
}
```