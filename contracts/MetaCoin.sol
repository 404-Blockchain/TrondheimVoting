pragma solidity ^0.4.2;


contract TrondheimVoting {
	struct Voter {
		bool registrered;
		bool voted;
		adress delegate;
	}
	mapping (address => Voter) voters;

	adress public owner;

	event Transfer(address indexed _from, address indexed _to, uint256 _value);

	function MetaCoin() {
		owner = msg.sender;
	}

	function sendCoin(address receiver, uint amount) returns(bool sufficient) {
		if (balances[msg.sender] < amount) return false;
		balances[msg.sender] -= amount;
		balances[receiver] += amount;
		Transfer(msg.sender, receiver, amount);
		return true;
	}

	function getBalanceInEth(address addr) returns(uint){
		return ConvertLib.convert(getBalance(addr),2);
	}

	function getBalance(address addr) returns(uint) {
		return balances[addr];
	}
}
