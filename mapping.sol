// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract practice{
    //mapping(key type=> value type ) Visibility MappiingName;
    //mapping(key type=> mapping(key type => value type))

    mapping(address=>uint) public balanceOf;

    function fundMe()public payable {
      balanceOf[msg.sender] += msg.value;
    }
}