// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import { MintCounter, MintCounterOptimzied } from "../src/MintCounter.sol";

contract MintCounterTest is Test {

  MintCounter public instance;
  MintCounterOptimzied public instanceOptimized;

  function setUp() public {
    instance = new MintCounter();
    instanceOptimized = new MintCounterOptimzied();
  }

  function testMint() public {
    instance.mint(10);
    assertEq(instance.totalSupply(), 10);
  }

  function testMintOptimized() public {
    instanceOptimized.mint(10);
    assertEq(instanceOptimized.totalSupply(), 10);
  }
}