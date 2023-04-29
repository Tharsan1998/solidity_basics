// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract str{
   
   struct student{
       string name;
       uint roll;
       uint age;
   }

   student public Student1=student({name:"Tharsan",roll:11,age:22});
   student public stu;

   function setVal(string memory _name,uint _roll,uint _age) public{
       stu=student(_name,_roll,_age);
   }

   //************************************* Array of struct ****************************

   struct person{
       string fname;
       string lname;
   }

   person[4] public per;

   function set(uint index,string memory _fname,string memory _lname) public{
       per[index]=person(_fname,_lname);
   }

   function get(uint index ) public view returns(person memory){
       return per[index];
   }
}