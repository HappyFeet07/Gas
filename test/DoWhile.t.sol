// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import { DoWhile, DoWhileOptimized } from "../src/DoWhile.sol";

contract DoWhileTest is Test {

  DoWhile public instance;
  DoWhileOptimized public instanceOptimized;

  function setUp() public {
    instance = new DoWhile();
    instanceOptimized = new DoWhileOptimized();
  }

  function testIplusplus() public {
    instance.go();
  }

  function testIplusplusOptimized() public {
    instanceOptimized.go();
  }
}