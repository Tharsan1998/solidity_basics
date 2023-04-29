// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface ITh{
     function setName(string memory _name) external;
     function getName() external view returns(string memory);
}

contract Access{
    function callSetName(string memory name) public{
        ITh(0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B).setName(name);
    }

    function callgetName() public view returns(string memory){
        return ITh(0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B).getName();
    }
}