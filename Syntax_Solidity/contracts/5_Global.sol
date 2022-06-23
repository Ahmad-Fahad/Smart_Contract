// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.4.0 <0.9.0;

contract Global_VariableS {
    string state_variable = "Experiment of Global VariableS";
    
    function get_block_number() public view returns(uint ) {
        return block.number;
    }
    function get_block_hash(uint number) public view returns(bytes32 ) {
        return blockhash(number);
    }
    function get_owner_account() public view returns(address ) {
        return msg.sender;
    }
    function get_address() public view returns(address ) {
        return address(this);
    }
    function get_balance(address addr) public view returns(uint ) {
        return addr.balance;
    }
    function get_miner() public view returns(address payable) {
        return block.coinbase;
    }
    function get_data() public view returns(bytes calldata) {
        return msg.data;
    }
    function get_value()  public payable  returns(uint) {
        return msg.value;
    
    }
    function coin_transfer(address payable to) public  {
        to.transfer(5555);
    }
    function coin_send(address payable to) public returns(bool){
        return to.send(5555);
    }



    /*
    function get_origin()  public payable view returns(address payable) {
        return tx.origin;
    }
    */
}

/*

 0x50bf8b0d

*/