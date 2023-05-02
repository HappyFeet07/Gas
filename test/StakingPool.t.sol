// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import { IERC20, StakingPool, StakingPoolOptimized } from "../src/StakingPool.sol";

contract StakingPoolTest is Test {

  StakingPool public instance;
  StakingPoolOptimized public instanceOptimized;

  function setUp() public {
    instance = new StakingPool(IERC20(address(0)), IERC20(address(0)));
    instanceOptimized = new StakingPoolOptimized(IERC20(address(0)), IERC20(address(0)));
  }

  function testStake() public {
    instance.stake(10);
    instance.claimReward();
    instance.stake(10);
    instance.claimReward();
    instance.stake(10);
    instance.claimReward();
    instance.stake(10);
    instance.claimReward();
    instance.stake(10);
    instance.claimReward();
    instance.stake(10);
    instance.claimReward();
    instance.stake(10);
    instance.claimReward();
    instance.withdraw();
    instance.explode();
  }

  function testStakeOptimized() public {
    instanceOptimized.stake(10);
    instanceOptimized.claimReward();
    instanceOptimized.stake(10);
    instanceOptimized.claimReward();
    instanceOptimized.stake(10);
    instanceOptimized.claimReward();
    instanceOptimized.stake(10);
    instanceOptimized.claimReward();
    instanceOptimized.stake(10);
    instanceOptimized.claimReward();
    instanceOptimized.stake(10);
    instanceOptimized.claimReward();
    instanceOptimized.stake(10);
    instanceOptimized.claimReward();
    instanceOptimized.withdraw();
    instanceOptimized.explode();
  }
}