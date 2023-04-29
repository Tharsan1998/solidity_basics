// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract rec{
    receive() external payable{

    }

    function checkBalance() public view returns(uint){
        return address(this).balance;
    }
}