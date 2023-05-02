// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PureModifier {
	address owner;
  error NotOwner();
  constructor() {
    owner = msg.sender;
  }
	modifier checkOwner() {
    if(msg.sender != owner) {
      revert NotOwner();
    }
	  _;
  }
  function funcA() public checkOwner {}
 	function funcB() public checkOwner {}
 	function funcC() public checkOwner {}
}