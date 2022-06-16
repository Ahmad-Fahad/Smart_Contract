// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.4.0 <0.9.0;


contract Pure_View {
    string state_var = "CryptO CommandoS";
    function setMsg_pure(string memory _msg) public pure returns(string memory){
        string memory msg = "Old message";
        msg = _msg;
        return msg;
    } 
    function setMsg_view() public view returns(string memory){
        return state_var;
    } 
}