// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract KYC{
    address admin;
    Organization[] registered_organizations;
    struct Customer{
        address id;
        string name;
        uint aadhaar_no;
        Dob dob;
        string gender;
        uint phone_no;
        string residential_address;
        string nationality;
        string pan_no;
        uint income;
        string photo_hash;
        address[] customer_organizations;
        bool key_status;
    }
    struct Dob{
        uint day;
        uint month;
        uint year;
    }
    struct Organization{
        string name;
        address id;
    }
    constructor(){
        admin=msg.sender;
    }
    struct keyRequests{
        uint cnt;
        address organization;
        address customer;
    }
    //mappings
    mapping (address => Customer) customers;
    mapping (address => Organization) organizations;
    
    //modifiers
    modifier isAdmin{
        require(msg.sender == admin,"Only Admin have the Access");
        _;
    }
    
}