// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Party {
    uint256 deposit;
    address[] members;
    mapping(address => bool) paid;

    constructor(uint256 _deposit) {
        deposit = _deposit;
    }

    function rsvp() external payable {
        require(!paid[msg.sender], "You've paid already!");
        require(msg.value == deposit);
        members.push(msg.sender);
        paid[msg.sender] = true;
    }
}
