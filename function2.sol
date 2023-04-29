// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Tharsan {

    function FullName()public pure returns(string memory ){
        return "Welcome Tharsan";
    }

    uint public no1=21;
    function Hello()public view returns(uint){
        return no1;
    }


    uint public no2=5;
    function no()public  returns(uint){
        return no2=10;
    }

    uint no3=10;
    function noX(uint _no3)public returns(uint){
        no3=_no3;
        return no3;

    }
}