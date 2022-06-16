// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.4.0 <0.9.0;

contract Error_Handling {
    uint roll = 985;
    function setRoll(uint r) public  {
        if(r < 0) {
            //assert(false);
            require(false, "Roll Number Must be greater than 0");
        }
        else {
            roll = r;
        }
    }

    function getRoll() public view returns(uint) {
        return roll;
    }
}