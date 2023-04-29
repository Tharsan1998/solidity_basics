// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Map{
    mapping(string=>mapping(address=>uint))public person;

    function Test(string memory _name, address _addr, uint _num)public {
        person[_name][_addr]= _num;
    }
}