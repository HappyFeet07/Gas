// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import { Callme, CallmeOptimized } from "../src/Callme.sol";

contract CallmeTest is Test {

  Callme public instance;
  CallmeOptimized public instanceOptimized;

  function setUp() public {
    instance = new Callme();
    instanceOptimized = new CallmeOptimized();
  }

  function testIplusplus() public {
    instance.callme();
  }

  function testIplusplusOptimized() public {
    instanceOptimized.callme();
  }
}