// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract MintCounter {

  uint256 public totalSupply;
  function mint(uint256 amount) public {
    for (uint256 i = 0; i < amount; i++) {
      uint256 id = totalSupply++;
      mintNft(msg.sender, id);
    }
  }

  function mintNft(address _who, uint256 tokenId) public {}
}