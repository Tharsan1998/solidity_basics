// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Thanu{
    int[] public numbers ;

    function add(int _value) public {
        numbers.push(_value);
        // numbers.push(12);
        // numbers.pop();
    }

    function pop() public{
        numbers.pop();
    }

    function delVal() public {
        delete numbers[3];
    }

    function array() public view returns(int[] memory){
        return numbers;
    }

    uint[3] public numb = [1,2,3];

    function len() public view returns(uint256){
        return numb.length;
    }
}