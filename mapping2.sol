// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract map{
    mapping(uint=>string) public data;

    function setVal(uint _roll,string memory _name) public{
       data[_roll]=_name;
    }

    function getter(uint _roll) public view returns(string memory){
        return data[_roll];
    }
}