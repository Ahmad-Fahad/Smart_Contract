// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.4.0 <0.9.0;

contract structure {
    struct student_data {
        uint roll;
        string name;
        uint contact;
    }
    student_data s1 = student_data(1, "xxxx", 49857495);
    student_data s2 = student_data(2, "yyyy", 69857495);

    function getData() public view returns(uint ) {
        return s2.contact;
    }
}
