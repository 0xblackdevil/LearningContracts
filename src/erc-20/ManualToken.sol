// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ManualToken{

    string memory constant public NAME = "Manual Token"
    string memory constant public SYMBOL = "MTK";
    string memory constant public TOTAL_SUPPLY = 100 ether;

    mapping (address => uint256 ) private _balances;
    mapping (address => mapping (address => uint256 )) private _allowances;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    function _mint(address _)

    function balanceOf(address _owner) public view returns (uint256){
        return _balances[_owner];
    }

    function transfer(address _to, uint256 _value) public returns (bool success){
        require(_balances[msg.sender] >= _value);
        _balances[msg.sender] -= _value;
        _balances[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success){
        require(_balances[_from] >= _value);
        _balances[_from] -= _value;
        _balances[_to] += _value;
        emit Transfer(_from, _to, _value);
        return true;   
    }

}