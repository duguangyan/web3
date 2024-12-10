// SPDX-License-Identifier: MIT
// 智能合约的许可证
pragma solidity >=0.7.0 <0.9.0;

contract HelloWord {

    string public name;

    constructor() {
        name = "web3";
    }

    function saName() public view returns (string memory) {
        return name;
    }

    function changeName (string memory _name) public {
        name = _name;
    }

}