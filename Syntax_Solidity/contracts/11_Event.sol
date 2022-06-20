// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.4.0 <0.9.0;

contract Event {
    event trade (
        uint indexed date,
        address indexed from,
        address indexed to,
        uint amount
    );
    function trade_action(address _to, uint _amount) external {
        emit trade(block.timestamp, msg.sender, _to, _amount);
    }
}