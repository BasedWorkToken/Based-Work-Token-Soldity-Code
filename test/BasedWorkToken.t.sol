// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {BasedWorkToken} from "../src/BasedWorkToken.sol";

contract BasedWorkTokenTest is Test {
    BasedWorkToken public basedWorkToken;

    function setUp() public {
        basedWorkToken = new BasedWorkToken();
    }

    function test_x() public {
    }
}
