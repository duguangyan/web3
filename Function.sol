
// SPDX-License-Identifier: MIT
// 智能合约的许可证
pragma solidity >=0.7.0 <0.9.0;

contract Function {

    string name = "xiaohong";

    function setName( string memory _name) public {
        name = _name;
        printName(name);
    }
}

function printName (string memory _name) pure returns (string memory) {
    return _name;
}