// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Addition{
    uint val=0;
    function increment() public  {
        val++;
    }
    function decrement() public  {
        val--;
    }
    function show() public view returns (uint) {
        return val;
    }
    function show_for(uint k) public returns (uint){
        for (uint i=0; i<k; i++) 
        {
            val++;
        }
        return val;
    }
    function show_while(uint k) public returns (uint){
        uint i=k;
        while(i != 0){
            val++;
            i--;
        }
        return val;
    }

}