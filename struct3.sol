// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;
contract str3{

    struct student{
      string name;
   bool complete;
    }
   
   student[] public stu;

   function set(string memory _name,bool _complete) public{
       //stu.push(student(_name,_complete));
       stu.push(student({name:_name,complete:_complete}));
      // stu[index]=student(_name,_complete);
   }

   function get(uint index) public view returns(student memory){
       return stu[index]; 
   } 
}