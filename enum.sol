// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract ConEnum{
    enum button{ON,OFF}  // 0,1

    button public x;

    function checkStatus() public view returns(button){
        return x;
    }

    function changeStatus(button _x) public {
       x=_x;

        } 

    function returnButton() public view returns(string memory){
       if(x==button.ON){
           return" Button is ON";
       } else{
           return "button is OFF";
       } 
    }


}