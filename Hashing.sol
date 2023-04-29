// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract hashing{
    function Hash(string memory WordA,string memory WordB) public pure returns(bytes32){
        return keccak256(abi.encodePacked(WordA,WordB));
    }

     function Hash2(string memory WordA) public pure returns(bytes32){
        return keccak256(abi.encodePacked(WordA));
    }
}