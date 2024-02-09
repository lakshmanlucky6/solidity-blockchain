// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Voting{
    uint voteCount;
    struct Vote{
        uint id;
        string name;
        uint age;
        bool status;
    }
    mapping (uint => bool) validCandidate;
    mapping (uint => Vote) candidate;
    mapping (uint => bool) validVoter;
    modifier isValidVoter(uint id){
        require(validVoter[id]==false,"Invalid Voter");
        _;
    }
    modifier isValidCandidate(uint _age){
        require(_age >= 18,"Age should be minimum 18 to Vote");
        _;
    }
    modifier isCompleted(uint _id){
        require(candidate[_id].status==false,"Vote Already Completed");
        _;
    }
    modifier isValidId(uint _id){
        require(validVoter[_id]==false,"Vote Already Completed");
        _;
    }
    function addCandidate(uint _id,string memory _name,uint _age) public isValidCandidate(_age) isValidId(_id){
        voteCount++;
        candidate[_id].id=_id;
        candidate[_id].name=_name;
        candidate[_id].age=_age;
        candidate[_id].status=false;
    }
    function makeVote(uint _id) public view isValidVoter(_id) isCompleted(_id){
        candidate[_id].status==true;
    }
}