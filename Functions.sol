// SPDX-License-Identifier: GPL-3.0


// defining the versions for which this code will work
pragma solidity > 0.5.0 <= 0.9.0;

contract Functions{
    string name = "Kashish"; // agar state variable ko public kr diya jaye -> automatically a getter function is created, we don't need to create it 
    // explicitly
    uint age = 20;

    // By default, variable visibility is private.

    // getters and setters:

    // Function syntax -> function keyword + function name + access modifier + view/pure + return type -> then body

    // getter:
    function getName() public view returns (string memory) {  // view -> just to see the value of state variable -> you don't want to modify it
        return name; 
    }

    // setter:
    function setName(string memory newname) public {
        name=newname;
    } 

    // getter me we are just returning the value -> that doesn't change anything in blockchain -> hence it doesn't cost any gas
    // setter me ham state variable ki value change krte hain -> blockchain me change hota hai -> hence it costs gas


     // pure vs view:

    /* view ka matlab -> you can only see STATE VARIABLE -> cannot modify them -> yani local variables ke sath ham kuch marzi kar sakte hain,
    restriction sirf state variables pe hota hai

    similarly, pure functions me na to ham read kr skte hain state variables ko (cannot return their values) , na hi modify kr skte hain , but local
    variables ke sath kuch marzi kr skte hain -> read them , modify them do whatever u want


    */

    // use of view:
    function getAge() public view returns (uint){
        string memory nickname="priya";

        nickname="riya"; // I can still modify local variables

        return age;
    }

    function sayName() public pure returns (string memory){
        string memory name2="riya";

        //age=21; // compilation error
        return name2; // can return or modify local variables but NOT state variables:

    }


}