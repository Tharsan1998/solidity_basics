// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract callContract{
    function setX(TestContract _test,uint _x) external{
        _test.setX(_x);
    }

    function getX(TestContract _test) external view returns(uint){
        return _test.getX();
    }
}

contract TestContract {
    uint public x;

    function setX(uint _x) external {
        x=_x;
    }

    function getX() external view returns(uint ){
        return x;
    }
}