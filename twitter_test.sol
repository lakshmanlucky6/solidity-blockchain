// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Check{
    mapping (uint => bool) public data;
    modifier isExist(uint number){
        require(data[number] == false,"User already exist");
        _;
    }
    modifier isNotExist(uint number){
        require(data[number] == true,"User Not exist");
        _;
    }
    function addUser(uint number) public isExist(number){
        data[number]=true;
    }
    function revokeUser(uint number) public isNotExist(number){
        data[number]=false;
    }
    function isVerified(uint number) public view returns (bool){
        return data[number];
    }
}