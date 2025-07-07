// SPDX-License-Identifier: GPL-3.0


// defining the versions for which this code will work
pragma solidity > 0.5.0 <= 0.9.0;

// payable function -> ek asa function -> which can receive ether

contract pay{

    address payable user = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    /* address is a datatype used to store ethereum address -> payable iske sath likha jata hai because -> this account is going to receive ether.
     then we have to add the ethereum account address -> and make it payable explicitly (in new versions) -> pehle k versions me seedha address 
     daalne pe bhi kaam chal  jata tha  */ 

    function payEther() public payable{
      // yani is function ko run krne se hamare is smart contract me ether receive honge
    }

    // check balance of the smart contract:
    function getBalance() public view returns (uint){
        return address(this).balance; // address is a key word -> address(this) -> address of this current 
        // smart contract -> using .balance -> we can access the balance of the smart contract
    }

    // deploy krte hi kuch amount of ether account se kam ho jayengi -> this function will cost gas:


    // transfer ether to some other account from this smart contract:
    function sendEther() public {
        user.transfer(10 ether); // transfer function -> used to transfer ether to the user address from the smart contract
    }
}