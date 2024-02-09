// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Enum{
    enum Button{
        OFF,
        ON
    }
    Button public btn;
    function buttonOn() public {
        btn=Button.ON;
    } 
    function buttonOff() public{
        btn=Button.OFF;
    }
    function buttonOnWith(Button _btn) public {
        btn=_btn;
    } 
    function buttonOffWith(Button _btn) public{
        btn=_btn;
    }
    function status() public view returns (Button){
        return btn;
    }
}