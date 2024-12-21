// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {BasedWorkToken} from "../src/BasedWorkToken.sol";

contract BasedWorkTokenScript is Script {
    BasedWorkToken public basedWorkToken;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        basedWorkToken = new BasedWorkToken();
        vm.stopBroadcast();
    }
}
