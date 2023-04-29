// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SendEth{
   // constructor() payable{ }

   // fallback() external payable{}

    function sendViaTransfer(address payable to) external payable{
        to.transfer(10); 
    }

    function sendViaSend(address payable to) external payable{
       bool sent= to.send(10); 
       require(sent,"send failed");
    }

    function sendViaCall(address payable to) external payable{
       (bool success,/* bytes memory data */)= to.call{value:10} ("");
        require(success,"call failed");
    }

}