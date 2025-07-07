// SPDX-License-Identifier: GPL-3.0


// defining the versions for which this code will work
pragma solidity > 0.5.0 <= 0.9.0;

contract A {

    function f1 () public pure returns (uint){
        /* public ka matlab -> this function is accessible within the contract, in derived contracts, external enviornment (remix ide) and in other
        contracts as well
        */

        return 1;
    }

    function f2() private pure returns (uint){
          
        /* private ka matlab -> this function is accessible ONLY WITHIN the contract -> na to derived me use ho skta hai, na outside the contract 
         aur na hi  in other contracts
        */
        return 2;
    }

    function f3() internal pure returns (uint){
       
        /* internal ka matlab -> the function is accessible within the contract and in the derived contracts
        */

        uint x = f2(); // allowed -> private function called within the contract
        // uint y = f4(); // compilation error -> f4() cannot be called within the contract
        return 3;
    }

    function f4() external pure returns (uint){
        /*  external ka matlab -> this function is accesible everywhere except within the contract -> iska matlab is function ka use is contract 
        me ha hi nhi 
        */
        return 4;
    }

    // deploy krne pe -> remix IDE (external enviornment) me sirf f1 aur f4 show hoga
}

// derived contract:
contract B is A {
    /* uint a = f2(); compilation error -> f2() is a private function of contract A -> cannot be used in 
    derived contract */

    uint b = f3(); // applicable _> internal functions can be called in derived contracts
    /* uint c = f4();  cannot be called -> because contract B inherits contract A -> yani B me bhi ab f4() function hai -> external functions cannot
    be called within the contract -> isliye ham f3() ko B contract me bhi call nahi kr paa rahe hain
    */

    // correct way to call an external function: external function ko call krne k liye -> hame external call lagani padegi -> using this.f4()
    function callF4() public view returns (uint){
        return this.f4();
        // Here, this.f4() means Call f4() externally using the current contract address
    }
}

// other contracts: we can call public and external functions of contract A here:
contract C {
      
     // calling an external function:
     A obj = new A(); // creating object of contract A
     uint public x = obj.f4(); // ham directly ek contract se dusre contract ke functions call nahi kar skte -> we need to create object of that 
     // contract to call functions of that contract
}