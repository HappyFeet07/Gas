// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import { I, IOptimized } from "../src/I.sol";

contract ITest is Test {

  I public instance;
  IOptimized public instanceOptimized;

  function setUp() public {
    instance = new I();
    instanceOptimized = new IOptimized();
  }

  function testIplusplus() public {
    instance.Iplusplus();
  }

  function testIplusplusOptimized() public {
    instanceOptimized.Iplusplus();
  }
}