// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Thars {
    uint256 public favNum;

    function store(uint _favNum) public  {
        favNum=_favNum;
    }

    function pub() public view returns(uint){
        return favNum;
    }
}