// SPDX-License-Identifier: MIT
// 智能合约的许可证
pragma solidity >=0.7.0 <0.9.0;

contract MappingType {
    mapping(address => uint256) public balances;


    /*
        {
            0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 : 1000000,
            0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2: 10000000,
        }
    */

    function setBalances(uint256 amount) public {
        balances[msg.sender] = amount;
    }

    function balanceOf() public view returns (uint256) {
        return  balances[msg.sender];
    }

}