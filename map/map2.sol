// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract students {

//from class address to students' number
mapping(address => uint) public classMap;

//add class address and students' number
function addClass(address class, uint studentsnumber) public {
         classMap[class]=studentsnumber;
}

// from student's name and his class number to student exam note
mapping(string => mapping(uint => uint)) public examNote;


// Add student's name, his class number and student exam note
function addStudentPosition( string memory studentname, uint studentnumber, uint note) public {
    examNote[studentname][studentnumber]=note;
}

}
