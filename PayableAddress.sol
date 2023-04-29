// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract PayAddress{
    
    function sendEth(address payable receiver) public payable{
        receiver.transfer(msg.value);
    }
}