// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Tharsan{
   
   function fund()public payable{
       
   }

    address owner ;
   constructor(){
      owner = msg.sender; //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
   }

   function OwnerAddress()public view returns(address){
      return owner;
   }

}