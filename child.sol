// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract parent{
    string public x1="Public variable";
    string private x2="private variable";
    string internal x3="internal variable";
    // string external x4="external variable"; // cant use external for state variable

    function publicFunc()public pure returns(string memory){
        return "public function";
    }

     function privateFunc()private pure returns(string memory){
        return "private function";
    }

     function internalFunc()internal pure returns(string memory){
        return "internal function";
    }

     function externalFunc()external pure returns(string memory){
        return "External function";
    }

}

contract child is parent{

    /*function TestInternalVariable()public view returns(string memory){
        return x3;
    } */ 

    function Test()public pure returns(string memory){
        return internalFunc();
    }

}

