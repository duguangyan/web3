
// SPDX-License-Identifier: MIT
// 智能合约的许可证
pragma solidity >=0.7.0 <0.9.0;

contract ErrorDemo {
    

    uint public  x = 100;

    function doAssert() pure  public returns (uint)  {
        require(3 > 5, unicode"3 大于五 5");
        uint y = 200;
        return y;
    }
}