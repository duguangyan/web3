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
        state.gender = value == 0 ? unicode"男": unicode"女";
    }

}