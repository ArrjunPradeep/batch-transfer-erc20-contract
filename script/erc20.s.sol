// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import { USDT } from "../src/erc20.sol";

contract DeployUSDT is Script {
    function run() external returns (USDT) {
        vm.startBroadcast();
        USDT usdt = new USDT();
        vm.stopBroadcast();
        return usdt;
    }
}
