// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Addition{
    uint a;
    uint b;
    function addition(uint x,uint y) public pure returns (uint){
        uint temp=x+y;
        return temp;
    }
}