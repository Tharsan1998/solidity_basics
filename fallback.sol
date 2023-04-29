// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract fallB{

    event showMsg(address sender, uint amount ,string message);
     event showMsgFallback(address sender, uint amount ,string message);

     receive() external payable{
         emit showMsg(msg.sender,msg.value,"message from receive");
     }

      fallback() external payable{
         emit showMsgFallback(msg.sender,msg.value,"message from fallback");
     }
}