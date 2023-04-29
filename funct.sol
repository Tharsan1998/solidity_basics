// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Tharsan {
    //string public Name = "Hello Tharsan";

    function channelName()public pure returns(string memory){
        return "TK creations";
    } 

    function add(uint x,uint y )public pure returns(uint ){
        return x+y;
    }

    function sub(uint x ,uint y )public pure returns(uint ){
        return x-y;
    }
}