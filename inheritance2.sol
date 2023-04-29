// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/* Graph of inheritance
    A
   / \
  B   C
 / \ /
F  D,E

*/

contract A{
    function foo() public pure virtual returns(string memory){
        return "A";
    }

     function bar() public pure virtual returns(string memory){
        return "A";
    }

     function baz() public pure virtual returns(string memory){
        return "A";
    }

}

contract B is A{
    function foo() public pure override returns(string memory){
        return "B";
    }

     function bar() public pure virtual override returns(string memory){
        return "B";
    }
}

contract C is B {
    function bar() public pure override returns(string memory){
        return "C"; }
}



// *********************************************************************************
//  ******************* Multiple inheritance **********************************


contract X{
    function P() public pure virtual  returns(string memory){
        return "X";
    }

    function Q() public pure virtual returns(string memory){
        return "X";
    }

    function x() public pure returns(string memory){
        return "X";
    }
}

contract Y is X{
    function P() public pure virtual override returns(string memory){
        return "Y";
    }

    function Q() public pure virtual override returns(string memory){
        return "Y";
    }

    function y() public pure returns(string memory){
        return "Y";
    }
}

contract Z is X,Y{
    function P() public pure override(X,Y) returns(string memory){
        return "Z";
    }

    function Q() public pure override(X,Y) returns(string memory){
        return "Z";
    }

    function z() public pure returns(string memory){
        return "Z";
    } 
}