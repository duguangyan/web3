// SPDX-License-Identifier: MIT
// 智能合约的许可证
pragma solidity >=0.7.0 <0.9.0;

contract StoreType {

    string name;

}

contract person {

    struct State {
        string name;
        string gender;
    }


    State public state;

    function setState(string calldata _name , string calldata _gender) external {
        state.name = _name;
        state.gender = _gender;
    }

    function getState() view external returns (State memory) {
        return state;
    }

    function getName() external view  returns (string memory) {
        return state.name;
    }

    function changeGender(uint value) external  {
        // require(condition); 退回gas
        require(value == 0 || value == 1, 'person input value error, it is only 0 or 1');
        state.gender = value == 0 ? unicode"男" : unicode"女";
        // assert(condition); 不退回gas
    }

}


contract Counter {

    function start() external pure returns (uint sum) {

        uint a1 = 1;
        uint a2 = 1;
        uint a3 = 1;
        uint a4 = 1;
        uint a5 = 1;
        // uint a6 = 1;
        // uint a7 = 1;
        // uint a8 = 1;
        // uint a9 = 1;
        // uint a10 = 1;

        sum = a1 + a2 + a3 + a4 + a5;
        return sum;

    }

}