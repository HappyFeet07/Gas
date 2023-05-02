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

contract StakingPoolOptimized {

  IERC20 public immutable stakeToken;
  IERC20 public immutable reward;

  constructor(IERC20 _token, IERC20 _reward) {
    stakeToken = _token;
    reward = _reward;
  }

  function explode() external {
    selfdestruct(payable(msg.sender));
  }
  function claimReward() public {
    // claim reward
  }
  function withdraw() external {
    // claim stakeToken and reward
  }
  function stake(uint256 amount) external {
    // stake stakeToken into contract
  }
}

contract StakingPool {

  IERC20 public stakeToken;
  IERC20 public reward;

  constructor(IERC20 _token, IERC20 _reward) {
    stakeToken = _token;
    reward = _reward;
  }

  function explode() external {
    selfdestruct(payable(msg.sender));
  }

  function withdraw() external {
    // claim stakeToken and reward
  }

  function claimReward() public {
    // claim reward
  }

  function stake(uint256 amount) external {
    // stake stakeToken into contract
  }
}
