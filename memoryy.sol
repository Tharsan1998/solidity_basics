// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract hello{
    uint256[5] public arr;

    function arrr(uint[5] memory  _arr) public{
        arr=_arr;
    }

    function returnarr() public view returns(uint[5] memory){
        return arr;
    }
}