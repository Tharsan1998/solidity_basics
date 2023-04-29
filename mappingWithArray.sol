// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract mapWithArr{
    mapping(address=>uint[]) public marks;

    function insert(address _address,uint _marks) public{
        marks[_address].push(_marks);
    }

    function getter(address _address) public view returns(uint[] memory){
        return marks[_address];
    }
}