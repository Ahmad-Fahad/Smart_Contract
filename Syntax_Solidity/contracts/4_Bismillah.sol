// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.4.0 <0.9.0;
contract Bismillah{
    string public msg = "CryptO CommandoS";

    function setMsg(string memory _msg) public {
        msg = _msg;
    }
    function getMsg() public view returns(string memory) {
        return msg;
    }
}

