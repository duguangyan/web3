// SPDX-License-Identifier: MIT
// 智能合约的许可证
pragma solidity >=0.7.0 <0.9.0;

contract EventDemo {

    event Log(uint);
    event Log(string,uint);
    function foo() public {
        emit Log(100);
        emit Log(unicode"这是LOG",32);
    }

}