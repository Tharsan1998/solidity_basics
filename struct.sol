// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Thars{

    struct person{
        string name;
        uint age;
        string hobby ;
    }

    person public p1;

    function setValue(string memory _name,uint _age,string memory _hobby) public{
    //    p1.name=_name;
    //    p1.age=_age;
    //    p1.hobby=_hobby; 
       
       p1=person(_name,_age,_hobby);
    }

    function getter() public view returns(person memory){
        return p1;
    }

    function getName() public view returns(string memory){
        return p1.name;
    }
//**************************************************
    struct student{
        uint index;
        string fname;
    }

    student public student1= student({index:12,fname:"patric"});
     student public student2= student({index:13,fname:"ally"});
}