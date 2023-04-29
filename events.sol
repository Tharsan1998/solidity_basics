// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract eve{
    event Deposite(address reciever,address sender,uint value);

    function sendEth(address to,uint val) public payable{
        emit Deposite(to,msg.sender,val);
    }
}