// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import { PureModifier , PureModifierOptimized } from "../src/PureModifier.sol";

contract PureModifierTest is Test {

  PureModifier public instance;
  PureModifierOptimized public instanceOptimized;
  address admin;

  function setUp() public {
    admin = makeAddr("admin");
    vm.startPrank(admin);
    instance = new PureModifier();
    instanceOptimized = new PureModifierOptimized();
    vm.stopPrank();
  }

  function testPureModifier() public {
    vm.startPrank(address(0));
    vm.expectRevert();
    instance.funcA();
    vm.expectRevert();
    instance.funcB();
    vm.expectRevert();
    instance.funcC();
    vm.stopPrank();
  }

  function testPureModifierOptimized() public {
    vm.startPrank(address(0));
    vm.expectRevert();
    instanceOptimized.funcA();
    vm.expectRevert();
    instanceOptimized.funcB();
    vm.expectRevert();
    instanceOptimized.funcC();
    vm.stopPrank();
  }
}