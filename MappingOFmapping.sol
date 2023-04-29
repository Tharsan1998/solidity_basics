// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract mappingOfMapping{
    mapping(uint=>mapping(uint=>bool)) public data;

    function insert(uint row,uint column ,bool value) public{
        data[row][column]=value;
    }

    function returnVAl(uint row,uint column) public view returns(bool){
        return data[row][column];
    }
}