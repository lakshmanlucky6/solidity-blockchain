// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Addition{
    uint a;
    uint b;
    function addition2(uint x,uint y) public returns (uint){
        a=x;
        b=y;
        return a+b;
    }
    function addition3() public view returns (uint){
        return a+b;   
    }
    function addition4(uint x,uint y)public view returns(uint){
        x=a;
        y=b;
        return x+y;
    }
}