// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract X {
    string public name;

    constructor(string memory _name){
        name=_name;
    }
}

contract Y{
    string public text;

    constructor(string memory _text) {
        text =_text;
    }
}

// Way 1
contract B is X("Tharsan"),Y("He is a developer"){

}

//Way 2
contract C is X,Y{
    constructor (string memory _name,string memory _text) X(_name) Y(_text){

    }
}

//Way 3
contract D is X,Y{
    constructor() X("Tharsan") Y("Hello"){
        
    }
}

