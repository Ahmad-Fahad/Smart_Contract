// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.4.0 <0.9.0;

contract Global_VariableS {
    string state_variable = "Experiment of Global VariableS";
    function get_block_number() public view returns(uint ) {
        return block.number;
    }
    function get_owner_account() public view returns(address ) {
        return msg.sender;
    }
}

