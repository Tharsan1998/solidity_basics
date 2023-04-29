// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract modi{

    modifier IsTrue{
         require(true==true,"True is not equeal to true");
         _;
    }

    function f1() public pure IsTrue returns(uint){
        //require(true==true,"True is not equeal to true");
        return 1;
    }

    function f2() public pure IsTrue returns(uint){
        //require(true==true,"True is not equeal to true");
        return 2;
    }

    function f3() public pure IsTrue returns(uint){
        //require(true==true,"True is not equeal to true");
        return 3;
    }

    function f4() public pure IsTrue returns(uint){
       // require(true==true,"True is not equeal to true");
        return 4;
    }

// ***************************************************************************

    modifier isEven(uint a){
         require(a%2==0,"a is not even number");
         _;
    }

    function fx(uint a) public pure isEven(a) returns(bool){
       // require(a%2==0,"a is not even number");
        return true;
    }

    function fy(uint a) public pure isEven(a) returns(bool){
       // require(a%2==0,"a is not even number");
        return true;
    }

    function fz(uint a) public pure isEven(a) returns(bool){
       // require(a%2==0,"a is not even number");
        return true;
    }
}