// SPDX-License-Identifier: GPL-3.0


// defining the versions for which this code will work
pragma solidity > 0.5.0 <= 0.9.0;

// Loops and if-else:

contract Loops{
   uint [5] public array;
   uint count;

   // loops ko function ke andar likha jata hai -> if we write them without function -> throws compilation error

   // actually loops, if-else every thing are written inside functions -> because contract in solidity is like class in other programming languages
   // hence, sab kuch data members aur functions ki form me hota hai
   function loop() public {

    /* while loop
    while(count<array.length){
       array[count] = count;
       count ++;
    }
    */
    
    /* for loop 

    for (uint i=0; i < array.length; i++){
        array[i] = i;
    }
    */

    /* do while loop */
    do{
        array[count] = count;
        count ++;
    } while(count < array.length);
   }

   string public value;
   // if-else -> isko bhi function ke andar likhna zaroori hota hai
   function check(int num) public returns (string memory){
       if (num % 2 == 0) {
        value="even";
       } else{
        value="odd";
       }

       return value;
   }


   // Booleans: denoted by bool, has 2 values -> true, false

   bool public val; // by default -> false

   function check2(int num) public returns (bool)
   {
    if(num > 0)
    {
       val=true;
    } else{
        val=false;
    }
    return val;
   }

   /* Operators valid with boolean:

   ! (logical negation)
   && (logical conjunction, "and")
   || (logical or)
   == (eqaul to)
   != (not equal to)

   */

}