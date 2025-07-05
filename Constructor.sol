// SPDX-License-Identifier: GPL-3.0


// defining the versions for which this code will work
pragma solidity > 0.5.0 <= 0.9.0;

contract constructors{
    uint age;

    // constructor ek function hota hai -> jo tab call hota hai jab hamara contract first time deploy hota hai, it is used to intialise state variables
    // basically ham iska use ek aur kam k liye bhi krte hain -> contract ka owner decide krne ke liye

    // constructor sirf ek baar execute hota hai
    // You can create only one constructor and that is also optional
    // A default constructor is created by compiler if there's no explictly defined constructor

/*
    constructor(){
        age=23;
    }
    */
  

  // we can pass parameters to constructor as well
    constructor(uint newage){
        age=newage;
    }

    // Integers:

    /*
    there are two types of integers in solidity -> int and uint (unsigned integers) 

    int -> takes both positive and negative values                           uint -> takes only positive values
    signed and unsigned integers can be of various sizes.
    int8 to int256                                                           uint8 to uint256 
    // yani integers ka size 8 bits se 256 bits tak jaa sakta hai

    // it increases by 8 -> 8 bits, 16 bits, 24 bits , 32 bits ..... 256 bits

    int -> alias to int256 yani simple int ka matlab hai ki ye 256 bit wala integer hai, similarly uint -> alias to uint256

    By default, an int is initialized to 0.

    Overflow get detected at compile time.
    */
 
    /* Range of integers:
    int8 : -128 to 127     uint8 : 0 to 255
    int16 : -32768 to 32767   uint16 : 0 to 65535

    formula: for int -> -2^(n-1)-1 to 2^(n-1)-1         for uint -> 0 to 2^(n)-1
    */

    // int8 = 128 throw compilation error
    // uint8 = 256 throw compilation error
    // uint8 = -23 cannot take signed value in unsigned integers

    /* Operators used with integers:

    Comparisons: <=, <, ==, !=, >=, > (evaluate to bool)
    Bit operators: &, |, ^ (bitwise exclusive or) , ~ (bitwise negation)

    Arithmetic operators: +, -, unary -, unary +, *, /, % (remainder), ** (exponentiation), << (left shift), >> (right shift)  


    */

    /* Overflow:

    pehle 0.5.0 versions me ye hota tha ki for example, I have taken uint count = 255; -> now if I run a setter function and increment its value
    to is count ki value ko 0 kr diya jata tha 
    but after 0.8.0 versions, agar ham ye cheez krne ki koshish krte hain to transaction fail ho jata hai -> aur value 255 hi rehti hai
    */

    

}