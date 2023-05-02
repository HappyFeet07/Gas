// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import { MyContract, MyContract2 } from "../src/EmptyContract.sol";

contract Deploy is Test {

  function testDeployOptmizied() public {
    new MyContract2();
  }

  function testDeployUnoptmizied() public {
    new MyContract();
  }
}