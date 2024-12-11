// SPDX-License-Identifier: MIT
// 智能合约的许可证
pragma solidity >=0.7.0 <0.9.0;


contract EnumType {


    enum State {
        Online, // 0
        Offline, // 1
        Unknown // 2
    }

    State public state;

    function get() public view returns (State) {
        return  state;
    }

    function set(State _state) public {
        state = _state;
    }

    function off() public {
        state = State.Offline;
    }

    function reset() public {
        delete state;
    }
}