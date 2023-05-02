// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract Faucet {

    function get(bytes memory data) external {
        require(keccak256(data) == keccak256(pw()));
        payable(msg.sender).transfer(0.1 ether);
    }
    function pw() public pure returns (bytes memory) {
        return "abc";
    }

    receive() external payable {}
}