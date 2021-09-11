// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0 <0.9.0;

contract Counter {
    // 1,2,3...
    uint public count = 1;
    
    function incrementCount() public {
        count++;
    }
}