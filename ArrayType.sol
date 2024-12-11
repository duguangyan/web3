// SPDX-License-Identifier: MIT
// 智能合约的许可证
pragma solidity >=0.7.0 <0.9.0;

contract ArrayType {
    uint[5] arr = [2,3,4,5,6];

    function getArr() view public returns (uint[5] memory){
        return arr;
    } 


    function sumArray() view public returns (uint){
        uint sum = 0;

        for(uint i = 0; i < arr.length; i++) {
            sum += arr[1];
        }

        return sum;
    } 
}

contract ArrayType2 {

    uint[] arr =[0];

    function getArr() public view returns (uint[] memory) {
        return arr;
    }
}


contract ArrayType3 {

    uint[] arr =[0];

    function getArr() public view returns (uint[] memory) {
        return arr;
    }
}