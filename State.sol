// SPDX-License-Identifier: GPL-3.0


// defining the versions for which this code will work
pragma solidity > 0.5.0 <= 0.9.0;

// what are state variables and where are they stored in blockchain??

/*blockchain me ek global storage hota hai -> waha contract ke state variables store hote hain -> lifetime is forever until the contract is destroyed
if they are made public -> they can be read by anyone , cost = writing is expensive, reading is cheap (gas-wise). This storage is persistent, 
permanent, public and shared among all the nodes...
*/

contract State{
    // uint -> unsigned integer
    uint public age; // this is a state variable  -> jase hi mane isko public kr diya -> automatically age ka getter function ban jayega 
    // har state variable ki ek default value hoti hai -> for int, it is 0 -> so age me by default 0 store hoga

  //  age=10;  -> gives compilation error -> wrong way of initialising a state variable -> ya to sath ki sath hi initialise kro -> uint public age=10

  // or initialise the state variable inside a constructor

  // naya state variable add krne k liye -> dubara deploy krna padega 
  uint public num;
  constructor(){
    age=10;
  }

  // third way of initialising -> create a setter function:

  function setAge() public{
    age=20;
  }

}