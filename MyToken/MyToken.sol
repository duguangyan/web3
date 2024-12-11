
// SPDX-License-Identifier: MIT
// 智能合约的许可证
pragma solidity >=0.7.0 <0.9.0;

import './Context.sol';

contract MyToken is Context {

    //  - 1、代币信息 -
    // 代币名称 name
    string private _name;
    // 代币标识 symbol
    string private _symbol;
    // 代币小数位数 decimals
    uint8 private  _decimals;
    // 代币的总发行量 totalSupply
    uint256 private _totalSupply;
    // 代币数量 balance
    mapping(address => uint256) private _balances;

    // 授权代币数量 allowance
    mapping (address=> mapping (address => uint256)) private _allowance;

    // - 2、初始化 -
    constructor() {
        _name ="RabbitCoin";
        _symbol = "RABTC";
        _decimals = 18;

        _mint(_msgSender(), 100 * 10000 **_decimals);
    }

    // - 3、取值器 -
    // 返回代币的名称 name()
    function name() public view returns (string memory){
        return _name;
    }
    // 返回代币标识 symbol()
    function symbol() public view returns (string memory) {
        return _symbol;
    }

    // 返回代币小数位数 decimals()
    function decimals() public view returns (uint8){
        return _decimals;
    }

    // 返回代币的总发行量 totalSupply()
    function totalSupply() public view returns (uint256){
        return  _totalSupply;
    }
    // 代币数量 balance()
    function balanceOf(address _owner) public view returns (uint256 balance){
        return _balances[_owner];
    }

    // - 4、函数 -
    // 代币转发
    function transfer(address to, uint256 amount) public returns (bool success){
        
        address owner = _msgSender();
        _transfer(owner,to,amount);

        return true;
    }

    // - 合约内部函数 -
    function _mint (address account , uint256 amount) internal {

        require(account != address(0), "ERC20: mint to the zero address");
        // 初始化货币数量
        _totalSupply += amount;
        // 给某个账号注入起始资金
        unchecked{
            _balances[account] += amount;
        }
    }
    // 转账
    function _transfer(address from, address to, uint256 amount) internal  {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        uint256 fromBalance =  _balances[from];
        require(fromBalance >= amount, unicode"ERC20: 余额不足");
        unchecked{
            _balances[from] -= amount;
            _balances[to] += amount;
        }
    }

    /*
        function name() public view returns (string)
        function symbol() public view returns (string)
        function decimals() public view returns (uint8)
        function totalSupply() public view returns (uint256)
        function balanceOf(address _owner) public view returns (uint256 balance)
        function transfer(address _to, uint256 _value) public returns (bool success)
        function transferFrom(address _from, address _to, uint256 _value) public returns (bool success)
        function approve(address _spender, uint256 _value) public returns (bool success)
        function allowance(address _owner, address _spender) public view returns (uint256 remaining)
    */
     
    /*
        {
            0xd0b7623302Ae60AF0257307d372F786c65467335: 100000
        }
    */

    /*
        {
            0xd0b7623302Ae60AF0257307d372F786c65467335: {
                0x32067D5F00c5E60B8525aBc79c0085fb572c7563: 3000,
                0xD922bE805c76eAB8cFCF2639Da81E0F9428c7c1d: 2000
            }
        }
    */

}
