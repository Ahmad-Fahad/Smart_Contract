// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.4.0 <0.9.0;

contract modifier_experiment {
    address owner;
    constructor() {
        owner = msg.sender;
    }
    modifier ownr() {
        if(msg.sender == owner) {
            _;
        }
        else {
            require(msg.sender == owner, "Sender Must be the owner");
        }
    }
    modifier m(uint a, uint b) {
        if(a!=0 &&  b!=0) {
            _;
        }
        else {
            require(a>0 && b>0, "Invalid input");
        }
    }
    function f(uint a, uint b) public view m(a, b) returns(uint) {
        return a*b;
    }
}