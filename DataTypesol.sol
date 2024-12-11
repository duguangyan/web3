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


contract StringType {
    string str = unicode"你好";

    string public str1 = "123";
    string public str2 = unicode"abc";

    function concat() public view returns (string memory) {
        string memory result = string.concat(str1,str2);
        return result;
    }


    function concat2(string memory _a, string memory _b) public pure returns (string memory) {
        bytes memory _ba = bytes(_a);
        bytes memory _bb = bytes(_b);
        return string(bytes.concat(_ba,_bb));
    }

    function testString() public view returns (bool){
        // bytes memory a = bytes(str1);
        // return a.length;
        bool b = keccak256(abi.encodePacked(str1)) == keccak256(abi.encodePacked(str2));
        return b;
    }

    function concat3() public view returns (string memory) {
        return string(abi.encodePacked(str1,str2));
    }

}