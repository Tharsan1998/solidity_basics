// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Cons{
    uint public num=5;
    

    // constructor(){
    //     num=12;
    // }

    constructor(uint _num){
        num=_num;
    } 
}