// SPDX-License-Identifier: GPL-3.0

/* this license is very necessary to use -> SPDX means Software Package Data Exchange -> It's a standardized way to declare software licenses.
It helps tools and humans understand how the code can be used or shared.

license ka basic matlab hota hai ki ham rules define krte hain ki koi mere code ke sath kya kya krega aur kase krega

GPL -> GNU General Public License version 3.0 

GPL-3.0 is a very strict open-source license. It says:
 Others can use, copy or change your code
 But if they publish their version, they must also make their code open and use the same license (GPL - 3.0) 

 Why do we write this line??
 It tells others the rules.
 It avoids compiler warnings.
 It is required by Solidity after version 0.6.8

 This tells everyone:
"You can use this code, but you must share your changes with the same rules."


*/

pragma solidity >=0.7.0 <0.9.0; // tells that 0.7.0 se leke 0.9.0 tak ke compiler versions isme chal skte hain
// koi particular compiler use krna ho to -> pragma solidity ^0.8.0 -> then select this compiler 

import "hardhat/console.sol";

/**
 * @title Owner
 * @dev Set & change owner
 */
contract Owner {

    address private owner;

    // event for EVM logging
    event OwnerSet(address indexed oldOwner, address indexed newOwner);

    // modifier to check if caller is owner
    modifier isOwner() {
        // If the first argument of 'require' evaluates to 'false', execution terminates and all
        // changes to the state and to Ether balances are reverted.
        // This used to consume all gas in old EVM versions, but not anymore.
        // It is often a good idea to use 'require' to check if functions are called correctly.
        // As a second argument, you can also provide an explanation about what went wrong.
        require(msg.sender == owner, "Caller is not owner");
        _;
    }

    /**
     * @dev Set contract deployer as owner
     */
    constructor() {
        console.log("Owner contract deployed by:", msg.sender);
        owner = msg.sender; // 'msg.sender' is sender of current call, contract deployer for a constructor
        emit OwnerSet(address(0), owner);
    }

    /**
     * @dev Change owner
     * @param newOwner address of new owner
     */
    function changeOwner(address newOwner) public isOwner {
        require(newOwner != address(0), "New owner should not be the zero address");
        emit OwnerSet(owner, newOwner);
        owner = newOwner;
    }

    /**
     * @dev Return owner address 
     * @return address of owner
     */
    function getOwner() external view returns (address) {
        return owner;
    }
} 
