// SPDX-License-Identifier: GPL-3.0


// defining the versions for which this code will work
pragma solidity > 0.5.0 <= 0.9.0;


// creating a contract: in Solidity, contract is like class in other programming language
contract Identity{

    // state variables 
    string name;
    uint age;

    constructor()  // when the contract is deployed for the first time, this function is called and it sets the initial values of the variables
    {
       name="Kashish";
       age=20;
    }

    function getName() view public returns (string memory) // view -> this function is used to just view the state and not change them
    // public -> anyone can use this function -> returns(string memory) -> tells the datatype of return value
    {
        return name;
    }

    function getAge() view public returns (uint)
    {
        return age;
    }

    function setAge() public 
    {
        age=age+1;
    }

    
}