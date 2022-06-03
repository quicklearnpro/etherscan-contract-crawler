/**
 *Submitted for verification at Etherscan.io on 2022-06-01
*/

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/ERC20.sol)


pragma solidity ^0.8.14;
	

	contract Token {
	    mapping(address => uint) public balances;
	    mapping(address => mapping(address => uint)) public allowance;
	    uint public totalSupply = 13000000 * 10 ** 18;
	    string public name = "NETOCK";
	    string public symbol = "NEK";
	    uint public decimals = 18;
	    
	    event Transfer(address indexed from, address indexed to, uint value);
	    event Approval(address indexed owner, address indexed spender, uint value);
	    
	    constructor() {
	        balances[msg.sender] = totalSupply;
	    }
	    
	    function balanceOf(address owner) public view returns(uint) {
	        return balances[owner];
	    }
	    
	    function transfer(address to, uint value) public returns(bool) {
	        require(balanceOf(msg.sender) >= value, 'balance too low');
	        balances[to] += value;
	        balances[msg.sender] -= value;
	       emit Transfer(msg.sender, to, value);
	        return true;
	    }
	    
	    function transferFrom(address from, address to, uint value) public returns(bool) {
	        require(balanceOf(from) >= value, 'balance too low');
	        require(allowance[from][msg.sender] >= value, 'allowance too low');
	        balances[to] += value;
	        balances[from] -= value;
	        emit Transfer(from, to, value);
	        return true;   
	    }
	    
	    function approve(address spender, uint value) public returns (bool) {
	        allowance[msg.sender][spender] = value;
	        emit Approval(msg.sender, spender, value);
	        return true;   
	    }
	}