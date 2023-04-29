// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract CallTestContract{

  function setx(address _test,uint _x) external{
      TestContract(_test).setx(_x);
  } 
// Othr way to set the address 
   function getx(TestContract _test) external view returns(uint){
      return _test.getx();
  } 
}


contract TestContract{
    uint public x;

    function setx(uint _x) external{
        x=_x;
    } 

    function getx() external view returns(uint){
        return x;
    }
}