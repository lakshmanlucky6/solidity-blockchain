// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Amazon{
    enum Status{
        ORDERED,
        SHIPPED,
        TRANSIST,
        OUT_FOR_DELIVERY,
        DELIVERED,
        RETURNED
    }
    Status item;
    function Order() public {
        item=Status.ORDERED;
    }
    function Ship() public {
        item=Status.SHIPPED;
    }
    function Transist() public {
        item=Status.TRANSIST;
    }
    function OFD() public {
        item=Status.OUT_FOR_DELIVERY;
    }
    function Delivered() public {
        item=Status.DELIVERED;
    }
    function Returned() public {
        item=Status.RETURNED;
    }
    function Delay() public {
        delete item;
    }
    
    function GetStatus() public view returns(string memory){
        if(item == Status.ORDERED) return "Ordered";
        if(item == Status.SHIPPED) return "Shipped";
        if(item == Status.TRANSIST) return "Transist";
        if(item == Status.OUT_FOR_DELIVERY) return "Out For Deliver";
        if(item == Status.DELIVERED) return "Delivered";
        if(item == Status.RETURNED) return "Returned";
        
    } 
    function setStatus(Status _item) public {
        item=_item;
    }
    function ItemStatus() public view returns(Status){
        return item;
    }
}