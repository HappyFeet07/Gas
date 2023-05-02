pragma solidity ^0.8.17;

contract MyContract {
  enum Layer { ONE, TWO, THREE }
  uint128  endtime;
  uint256 constant var3 = 1000;
  uint8      decimals;
  bytes32 name;
  uint64    index;
  uint16    count;
  Layer     layer;
  uint256  amount;
}

contract MyContract2 {
  enum Layer { ONE, TWO, THREE }
  uint128  endtime;
  uint256 constant var3 = 1000;
  uint8      decimals;
  Layer     layer;
  uint16    count;
  uint64    index;
  bytes32   name;
  uint256   amount;
}