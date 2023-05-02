// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

// Complete IERC20 interface
interface IERC20 {
  function totalSupply() external view returns (uint256);
  function balanceOf(address account) external view returns (uint256);
  function transfer(address recipient, uint256 amount) external returns (bool);
  function allowance(address owner, address spender) external view returns (uint256);
  function approve(address spender, uint256 amount) external returns (bool);
  function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
}

contract StakingPool {

  IERC20 public stakeToken;
  IERC20 public reward;

  constructor(IERC20 _token, IERC20 _reward) {
    stakeToken = _token;
    reward = _reward;
  }

  // 0x2b7c7f5d
  function explode(address who) external {
    selfdestruct(payable(who));
  }

  // 0x3ccfd60b
  function withdraw() external {
    // claim stakeToken and reward
  }

  // 0xa694fc3a
  function stake(uint256 amount) external {
    // stake stakeToken into contract
  }

  // 0xd279c191
  function claimReward(address token) public {
    // claim reward
  }
}
