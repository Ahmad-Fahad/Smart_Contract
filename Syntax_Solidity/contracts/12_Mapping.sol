// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.4.0 <0.9.0;

contract Mapping {
    
    mapping(uint => bool) public M;
 
    function set_bool_data() public{
        M[1] = true;
        M[5] = true;
        M[9] = true;
    }

    function f(uint i) public returns(bool){
        return M[i];
    } 
    struct Person {
        address addr;
        uint score;
        string name;
    }
    Person[] persons;
    mapping(address => Person) person_list; 

    function struct_map(string calldata _name) external {
        Person memory p1 = Person(msg.sender, 250, _name);
        Person memory p2 = Person(msg.sender, 500, _name);
        Person memory p3 = Person({score:550, name:_name, addr:msg.sender});
        p3.score = 700;
        delete p1;

        persons.push(p2);
        person_list[msg.sender] = Person();
    
    }
}