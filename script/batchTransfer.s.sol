// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {BatchTransfer} from "../src/batchTransfer.sol";

contract DeployBatchTransfer is Script {
    function run() external returns (BatchTransfer) {
        vm.startBroadcast();
        BatchTransfer batchTransfer = new BatchTransfer();
        vm.stopBroadcast();
        return batchTransfer;
    }
}
