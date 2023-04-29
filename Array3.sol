// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "./1st.sol";

contract Arr{

    // ***********Fixed Array *********************
    uint[4] public num =[1,2,3,4];
    uint[5] public numX;

    function insert(uint _index ,uint _item) public {
        numX[_index]=_item;
    }

    function getting(uint index) public view returns(uint){
        return numX[index];
    }

    function returnAll() public view returns(uint[4] memory){
        return num;
    }

    // ************* Dynamic Arrays ************************
      
      uint[] public number;

      function set(uint item) public{
          number.push(item);
      }
        
      function delpop() public{
          number.pop();
      }

      function len() public view returns(uint){
          return number.length;
      }

      function numberrr() public view returns(uint[] memory){
          return number;
      }
}