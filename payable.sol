// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract payables{
// transfer eather to my account

    function sendEtherToContract() public payable{

    }

    function balanceOfContract() public view returns(uint){
        return address(this).balance;
    }
}



contract payable2{
    address payable public owner;

    constructor (){
       owner= payable(msg.sender);
    } 

    function deposit() external payable{}

    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}
























