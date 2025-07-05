// SPDX-License-Identifier: GPL-3.0


// defining the versions for which this code will work
pragma solidity > 0.5.0 <= 0.9.0;

contract temp{

    // Storage Vs memory

    /*
    Storage                                                                  Memory
    storage basically contract storage hoti hai,                            memory me local variables (defined inside function) store hote hain ->
    ye global hoti hai aur state variables ko store                         the one which are reference type, eg, string, struct, arrays etc
    krti hai

    permanent storage in the blockchain  (ye EVM ki global
    state me store hote hain ye sab -> part of blockchain)                  temporary storage
    cost gas                                                                no gas

    */


    /* If I am using JVM -> yani real blockchain pe kaam nahi hora -> blockchain is simulated in the browser only -> is case me storage, stack aur 
    memory sab kuch hamari local machine ki RAM me chalta hai

    but if we are using real blockchain -> we download the whole blockchain -> isko run krenge EVM pe -> ye load hogi hamari RAM me -> it will use
    our RAM for temporary storage like stack and memory and it will use disk for contract storage -> yani state variables are stored in our machine

    */

    // storing string array in storage and memory
    string[] public names = ["Kashish", "Dhruv", "Tanisha"];
    string public ans;

    function mem() public returns (string memory) {
        string[] memory s1 = names;
        s1[1] = "Trisha";

        string[] memory s2 = s1;
        s2[0] = "Ram";
        ans = s1[0];

        return s1[0];
    }

    function sto() public {
        string[] storage s2 = names;
        s2[1] = "Trisha";
    }

    /* kya seekhne ko mila??
    hamne contract storage me names ko store krwaya -> then we created 2 arrays s1 and s2 
    ab s1 ko hamne memory me banaya hai aur s2 ko contract storage me 

    agar dono arrays same type ki location me hai (dono contract storage me ha ya dono hi memory me hai)
    tab to s1 = names krne pe s1 point krega to the original array, changes in s1 will reflect in names.

    but agar names contract storage me hai aur s1 memory me hai -> then s1 me names ki copy store hogi
    changes in s1 will not reflect in names


    */

    /* Global variables : ye ase pre-defined special variables hote hain jo har contract ke sath hame milte hain , we don't need to declare/ create
    krne ki need nahi hoti -> ye hame block, transaction, sender etc ki information dete hain 

    eg : block.timestamp , msg.sender
   */

   function getter() public view returns (uint block_no, uint timestamp, address sender){
    return (block.number, block.timestamp, msg.sender);
   }





}