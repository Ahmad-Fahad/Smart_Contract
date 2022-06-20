// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.4.0 <0.9.0;

contract array {
    uint[] public arr;
    function push_data() public {
        for(uint i=0; i<10; i++) {
            arr.push(i*6);
        }
    }

    function view_data() public view returns(uint[] memory) {
        return arr;
    }


}