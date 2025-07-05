// SPDX-License-Identifier: GPL-3.0


// defining the versions for which this code will work
pragma solidity > 0.5.0 <= 0.9.0;

contract Arrays{
    // declaration and initialisation of an array:
    // Fixed sized array:
    uint[4] public numbers = [1,2,3,4];  // size is 4 -> agar usse jyada elements dalenge to compilation error ayega
    

    // setter function to change the value at some index:
    function setter(uint index, uint value) public {
       numbers[index] = value;
    }

    // determine the length of array:
    function length() public view returns (uint){
        return numbers.length;
    }

    // Dynamic sized array:

    uint[] public arr;
    function pushElement(uint element) public{
        arr.push(element);
    }

   
    function popElement() public{  // removes the last element of the array
       arr.pop();

    }

    function getLength() public view returns (uint) {
        return arr.length;
    }


    // Byte array -> stores elements in hexadecimal form, 1 byte has 8 bits, 1 hexadecimal number is stored in 4 bits 
    // Everything in the byte array is stored in the form of hexadecimal digit.

    // declaring and initialising a byte array:

    // fixed sized byte array:
    bytes3 public b1; // size 3 byte array   // byte array ko decalre krne ke liye square brackets ka use nahi hota
    bytes4 public b2;  // size 4 byte array

    // initialised with value 0 by default 

    // setter function:
    function setter() public {
        b1 = 'abc'; // 0x616263   -> 'a' ascii value is 97 -> will be converted to its hexadecimal form 0x61
        b2 = 'ab'; // 0x61620000  -> sirf 2 bytes use hui hai -> baki 2 me padding ho jayegi 0 se 

      // byte array is immutable -> we cannot change the values at indexes
        // b1[0] = 'd'; throws compilation error
    }

    // dynamic sized byte arrays:

    // declaration:

    // bytes public b3; // has 0 bytes -> 0x

    bytes public b3 = 'abc';

    // push element to the array:
    function pushElement() public {
        b3.push('d');
    }

    // get element at specific index:
    function getElement(uint i) public view returns (bytes1){
        return b3[i];
    }

    // length of array:
    function getLength2() public view returns (uint){
        return b3.length;
    }

    


  





    

    


}