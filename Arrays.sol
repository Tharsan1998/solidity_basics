// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Arr {
    //Arrays
    // for Dinamic array => type[] visibility name
    // for static array => type[size] visibility name = [1,2,3];

    uint[] public numbers;

    function push(uint _num)public {
        numbers.push(_num);
    }

    function pop()public {
        numbers.pop();
    }

    function ArrLength()public view returns(uint){
        return numbers.length;
    }

    //Static Array
    uint[8] public numb=[1,2,4,5,6,2];
    
    // push , pop operations ah use panna ealaathu 

    function len()public view returns(uint){
        return numb.length;
    }



    // Memory Array create pannuvathu eppadi ?
  
  function MemoryArr()public pure returns(uint) {
      uint[] memory numbX = new uint[](3);
      numbX[0]=10;
      return numbX[0];
  }
}