// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract IFElse{

    // If Else conditions only can used within the functions

    function IfElse() public pure returns(uint) {
        uint x=10;
        uint y=11;

        if(x>10){
            return x;
        } else{
            return y;
        }
    }


    function checking(uint a ,uint b) public pure returns(uint){
        if(a>b){
            return 1;

        }else if(a==b){
            return 2;

        }  else{
            return 0;
        }
    }


    
    function check(uint a) public pure returns(bool){
        if(a%2==0){
            return true;
        } else{
            return false;
        }
    }
}