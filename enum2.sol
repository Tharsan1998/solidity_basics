// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract enum2{
    enum status{
        pending,
        shiped,
        accepted,
        rejected,
        canceled
    }

    status public stat;

    function get() public view returns(status){
        return stat;
    }

    function set(status _status) public{
        stat=_status;
    }

    function cancelled() public {
        stat= status.canceled;
        
    }

    function reset() public{
        delete stat;
    }
}