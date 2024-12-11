// SPDX-License-Identifier: MIT
// 智能合约的许可证
pragma solidity >=0.7.0 <0.9.0;

contract structType {

    struct Person{
        string name;
        string gender;
        uint age;
    }

    Person person;

    function  initial(string calldata _name , string calldata _gender, uint _age) public {
        person.name = _name;
        person.gender = _gender;
        person.age = _age;
    }

    function getPerson() public  view returns (Person memory) {
        return person;
    }

}