// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract req{

    function isZero(uint a) public pure returns(bool){
        require(a==0,"a is not eaqual to zero");
        return true;
    }


     function isZeroIf(uint a) public pure returns(bool){
        if(a==0){
            return true;
        } revert("a is not eaqual to zero");
     }

     //Most of the developers use require
}