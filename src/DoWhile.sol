// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract DoWhile {
  function go() public {
    uint16 i;
    do {
      unchecked {
        ++i;
      }
    } while (i < 200);
  }
}

contract DoWhileOptimized {
  function go() public {
    uint256 i;
    do {
      unchecked {
        ++i;
      }
    } while (i < 200);
  }
}