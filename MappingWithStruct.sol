// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract mappingWithStruct{

    struct student{
        string name;
        uint roll;
        bool pass;
    }

    mapping(uint=>student) public data;

    function insert(uint index,string memory _name,uint _roll,bool _pass) public{
        data[index]=student(_name,_roll,_pass);
    }

    function getter(uint index) public view returns(student memory){
        return data[index];
    }
}