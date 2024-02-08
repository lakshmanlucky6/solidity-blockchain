// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Solodity{
    uint16 a=10; //default uint256
    function boo(uint16 x) public returns(uint16){
        a=x;
        return a;
    }
}