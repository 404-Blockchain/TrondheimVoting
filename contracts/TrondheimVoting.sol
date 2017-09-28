pragma solidity ^0.4.2;


contract TrondheimVoting {
	struct Voter {
		bool registrered;
		bool voted;
		address delegate;
	}
	mapping (address => Voter) voters;
	address public owner;

	function TrondheimVoting() {
		owner = msg.sender;
	}

	function addVoter(address voter) {
		require(msg.sender == owner);
		if (msg.sender != owner) { throw; }
		voters[voter].registrered = true;
	}
}
