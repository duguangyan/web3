// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken2 is ERC20 {
    constructor() ERC20("MyToken2", "MTK2") {
        _mint(msg.sender, 100000000 * 10 ** decimals());
    }
}