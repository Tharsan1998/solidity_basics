// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Str{
    struct people{
        string name;
        uint age;
    }
    
    people[] public person;

    function insert(uint index,string memory _name,uint _age) public{
        // person.push(people(_name,_age));
        //other way
        
        person[index]=people(_name,_age);

    }

    function getten(uint index) public view returns(people memory){
        return person[index];
    }
}