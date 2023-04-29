// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Thanu{
    struct student {
        string name;
        string subject;
        uint age;
        bool pass;
    }
    student[4] public s;

    function insert(uint index, string memory _name,string memory _subject , uint _age,bool _pass) public{
        s[index]=student(_name,_subject,_age,_pass);
    }

    function get(uint index) public view returns(student memory){
        return s[index];
    }
}