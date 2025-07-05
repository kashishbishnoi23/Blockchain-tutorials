// SPDX-License-Identifier: GPL-3.0


// defining the versions for which this code will work
pragma solidity > 0.5.0 <= 0.9.0;

/* structure basically user-defined datatype ko bolte hain -> yani isme ham different-different basic data types ka use krke apna ek naya datatype
create krte hain , created using the struct keyword..

structure ko contract ke andar bhi define kiya ja sakta hai aur bahar bhi -> if we define it outside the contract -> multiple contracts can access it

*/

struct cars{
    string name;
    uint price;
}

contract Structure{

    // declaring an object of structure cars:
    cars public c1;

    constructor(string memory name_, uint price_){
        c1.name = name_;
        c1.price = price_;
    }

    // change:
    function check(string memory newname, uint newprice) public {

        // create a new object:
        cars memory newcar = cars({
            name:newname,
            price:newprice
        });

        c1 = newcar;
    }

    /* enum -> jab ham chahte ha ki ek variable ki value ek set of values me se hi ho -> then we use enum, for example, ham chahte hai ki 
   An enum (short for enumeration) is a user-defined type that allows you to define a variable with a fixed set of possible values.

    You use it when a variable can only have a few predefined options, like a status, direction, or state.

    for example, PizzaStatus: Ordered, Preparing, Delivered  -> iske status ki 3 hi possible values hongi -> koi aur nhi -> hence, we can use enum 
    here
    */

    enum PizzaStatus {Ordered, Preparing, Delivered}

    PizzaStatus public status1 = PizzaStatus.Ordered; // when we check its value -> it says 0 
    // agar status Preparing ho jayega -> to value 1 ho jayegi, Delivered pe value 2 ho jayegi

    function process() public{
        if (status1 == PizzaStatus.Ordered){
            status1 = PizzaStatus.Preparing;
        }
        // status1 now stores 1
    }

    // mapping: -> stores key-value pairs:

    mapping(uint =>  string) public studentData; // mapping keyword + data types of key-value + public + name of mapping
     
    // set -> map roll numbers with names:
    function setData(uint roll, string memory name) public {
        studentData[roll] = name;
    }
    // way better than storing them in arrays because array me agar for instance muje 710 tak roll numbers chahiye -> to atleast array ka size 710
    // hona chahiye, mapping me utna hi size lagega jitne key-value pairs hame chahiye honge


    // mapping with structures as values:
    struct StudentData {
        string name;
        uint age;
    }
    
    mapping(uint => StudentData) public students;

    // set with structures as values:
    function getStudentData(uint roll_, string memory name_, uint age_) public {
        students[roll_] = StudentData(name_, age_);
    }

    // some important points :

    // keys ka datatype inme se nahi ho sakta -> mapping, dynamic array, enum and struct
    // values can be of any type

    // mapping hamesha contract storage me store hoti hain chahe ham unhe functions ke andar banaye -> cost gas

   



}







