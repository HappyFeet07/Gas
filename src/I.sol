// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract I {
  function Iplusplus() public {
    for(uint256 i = 0; i < 5; i++) {}
  }
}

contract IOptimized {
  function Iplusplus() public {
    for(uint256 i = 0; i < 5;) {
      unchecked {
        ++i;
      }
    }
  }
}