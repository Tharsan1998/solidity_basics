// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract A{
    function foo() internal pure returns(string memory){
        return "Hello from A";
    }
}

contract B is A{
    //way 1
    function something() public pure returns(string memory){
        return A.foo();
    }
     //way 2
    function somethingX() public pure returns(string memory){
        return super.foo();
    }
}