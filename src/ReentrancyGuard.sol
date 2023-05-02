// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract ReentrancyGuard {
  uint256 private _status;
  modifier _nonReentrant() {
    require(_status != 1, "ReentrancyGuard: reentrant call");
    _status = 1;
    _;
    _status = 0;
  }
  function funcA() public _nonReentrant {}
  function funcB() public _nonReentrant {}
  function funcC() public _nonReentrant {}
}

contract ReentrancyGuardOptimized {
  uint256 private _status = 1;
  modifier _nonReentrant() {
    require(_status != 2, "ReentrancyGuard: reentrant call");
    _status = 2;
    _;
    _status = 1;
  }
  function funcA() public _nonReentrant {}
  function funcB() public _nonReentrant {}
  function funcC() public _nonReentrant {}
}