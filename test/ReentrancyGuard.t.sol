// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import { ReentrancyGuard , ReentrancyGuardOptimized } from "../src/ReentrancyGuard.sol";

contract ReentrancyGuardTest is Test {

  ReentrancyGuard public instance;
  ReentrancyGuardOptimized public instanceOptimized;

  function setUp() public {
    instance = new ReentrancyGuard();
    instanceOptimized = new ReentrancyGuardOptimized();
  }

  function testPureModifier() public {
    instance.funcA();
    instance.funcB();
    instance.funcC();
  }

  function testPureModifierOptimized() public {
    instanceOptimized.funcA();
    instanceOptimized.funcB();
    instanceOptimized.funcC();
  }
}