// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract memo{
    uint[4] public arr =[10,20,30,40]; // arr is an array created in storage area

    function Memor() public view{
        uint[4] memory arr1=arr; // arr1 is an array we create insided the memory
        arr1[0]=90;
    } 

    function fstorage() public{
        uint[4] storage arr2=arr; // arr2 is a pointer to arr
        arr2[0]=90;
    }
}