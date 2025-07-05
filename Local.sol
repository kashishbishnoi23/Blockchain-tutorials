// SPDX-License-Identifier: GPL-3.0

// defining the versions for which this code will work
pragma solidity > 0.5.0 <= 0.9.0;

// local variables -> function k andar declare hone wale variables ko local variables bolte hain -> they are stored in stack and not in the global
// contract storage where state variables are stored

/* local variables temporarily store hote hain -> only till the function is running -> stored on stack 

there are total 3 types of memory in use when it comes to blockchain:

1. stack -> very small and fast memory, lifetime -> per function call, stores small values like uint, bool etc..
2. memory -> Temporary RAM-like memory, lifetime -> per transaction, stores temporary large data like arrays, strings 
3. storage -> persistent blockchain data, lifetime -> permanent , stores state variables
*/

contract local{

    function store()  public pure returns (uint){
        uint age= 10; // local variable -> stored on stack 
        return age;
    }

    function store2() pure public returns (string memory){
        string memory name="Kashish"; // ab is case me hame ye batana padta hai ki string ko ham kahan store kra rahe hain -> contract storage me 
        // memory me ya call data me -> isliye string k sath memory bhi likha jata hai

        // there are two types of variables in solidity:

        // 1. value type -> jinki sirf value store hoti hai -> stored in stack 
        // 2. reference -> jinke pointers store hote hain -> stored in memory -> so reference variables k sath memory likhna is compulsory.

        // local variables don't cost gas.
        return name;
    }
}