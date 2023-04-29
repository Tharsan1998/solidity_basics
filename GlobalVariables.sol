// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract GlobalVAr{
    // msg.sender

    function callerAddress() public view returns(address){
        return msg.sender;
    }

    function returnBlockTimesStamp() public view returns(uint){
        return block.timestamp;
    }


}