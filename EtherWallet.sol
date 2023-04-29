// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EtherWallet{
    address payable public owner;

    constructor(){
        owner=payable(msg.sender);
    }

    receive() external payable{}

    function withdraw(uint amount) external {
        require(owner==msg.sender,"send failed");
        payable(msg.sender).transfer(amount);

       /* (bool success ,)= payable(msg.sender).call{value:amount} ("");
         require(success,"send failed"); */
    }

    function getBalance() external view returns(uint){
        return address(this).balance;
    }
}