// SPDX-License-Identifier: MIT
// 智能合约的许可证
pragma solidity >=0.7.0 <0.9.0;


contract DataType {

    int x = -100;
    uint y = 100;

    int public  minInt = type(int).min;
    int public  maxInt = type(int).max;

    uint public  minuInt = type(uint).min;
    uint public  maxuInt = type(uint).max;


    constructor() payable {

    }

    address public a = msg.sender;
    address public b = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    address public c = address(this);


}