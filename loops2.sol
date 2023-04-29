// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract loopss{
    uint[] public data;

    function loop() public  returns(uint[] memory ){
      
      for(uint i;i<6;i++){
          data.push(i);
      }
      return data;
    }
}