// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract MyToken{
    string public name;
    string public symbol;
    uint public decimals;
    uint public totalsupply;

    constructor(string memory _name,string memory _symbol , uint _decimals,uint _totalsupply){
        name=_name;
        symbol=_symbol;
        decimals=_decimals;
        totalsupply=_totalsupply;
        balanceOf[msg.sender]=totalsupply;

    }

    mapping(address=>uint) public balanceOf;
    mapping(address=>mapping(address=>uint))public allowed;

    event Transfer(address indexed _from , address indexed _to ,uint value);
    event Approved(address indexed _from ,address indexed _to,uint value);

    function transfer(address _to,uint _value)external returns(bool){
        require (_to != address(0),"address is invalid");
        require(_value <= balanceOf[msg.sender],"insufficient balance");

        balanceOf[msg.sender]-=_value;
        balanceOf[_to]+=_value;
        emit Transfer(msg.sender,_to,_value);
         return true;

    }

    function approve(address _to,uint _value)external{
        require(_to != address(0),"invalid address");
        allowed[msg.sender][_to]=_value;
        emit Approved(msg.sender,_to,_value);

    }
    
    function allowance(address _owner ,address _reciever)external view  returns(uint){
       return allowed[_owner][_reciever];
    }
    
    function transferFrom(address _from,address _to,uint _value)external returns(bool){
        require(_value<= balanceOf[_from], "Insufficient ether");
        require(allowed[_from][_to]<= _value, "insufficient ether");
        balanceOf[_from]-=_value;
        allowed[_from][_to]-=_value;
        balanceOf[_to]+=_value;
        emit Transfer(msg.sender,_to,_value);
        return true;
    }



}