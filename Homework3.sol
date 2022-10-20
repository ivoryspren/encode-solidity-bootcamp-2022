/* Homework 3
To this contract
. Add a variable to hold the address of the deployer of the contract
. Update that variable with the deployer's address when the contract is deployed.
. Write an external function to return
. Address 0x000000000000000000000000000000000000dEaD if called by the
deployer
. The deployer's address otherwise */

// SPDX-License-Identifier: None

pragma solidity 0.8.17;

contract BootcampContract {

    uint256 number;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function getOwnerAddress() external view returns (address) {
        if (msg.sender == owner) {
            return 0x000000000000000000000000000000000000dEaD;
        } else {
            return owner;
        }    
    }

    function store(uint256 num) public {
        number = num;
    }

    function retrieve() public view returns (uint256){
        return number;
    }
}
