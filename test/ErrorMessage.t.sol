// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import { ErrorMessage, ErrorMessageOptimized } from "../src/ErrorMessage.sol";

contract ErrorMessageTest is Test {

  ErrorMessage public instance;
  ErrorMessageOptimized public instanceOptimized;

  function setUp() public {
    instance = new ErrorMessage();
    instanceOptimized = new ErrorMessageOptimized();
  }

  function testRevert() public {
    vm.expectRevert();
    instance.I_am_a_revert_function(5, 10);
  }

  function testRevertOptimized() public {
    vm.expectRevert();
    instanceOptimized.I_am_a_revert_function(5, 10);
  }
}