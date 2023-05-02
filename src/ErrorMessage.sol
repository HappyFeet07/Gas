// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract ErrorMessage {
  function I_am_a_revert_function(uint256 a, uint256 b) public {
    require(
      a > b || a == b,
      "I am a revert function, i revert everything"
    );
  }
}

contract ErrorMessageOptimized {
  error RevertWhenAIsGreaterOrEqualToB();
  function I_am_a_revert_function(uint256 a, uint256 b) public {
    if (a < b) {
      revert RevertWhenAIsGreaterOrEqualToB();
    }
  }
}