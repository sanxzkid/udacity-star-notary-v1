// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract StarNotary {

    string public starName;
    address public starOwner;
    
    event starClaimed(address owner);
    event nameChanged(string name);
    
    constructor() {
        starName = "Awesome Udacity Star";
    }

    function claimStar() public {
        starOwner = msg.sender;
        emit starClaimed(msg.sender);
    }

    function changeName(string memory name) public {
        starName = name;
        emit nameChanged(starName);
    }
}