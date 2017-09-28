pragma solidity ^0.4.2;


contract TrondheimVoting {
	struct Voter {
		bool registrered;
		bool voted;
		address delegate;
	}
	mapping (address => Voter) voters;

	address public owner;

	struct votingOption {
		bool isVotingOption;
		string name;
		string description;
	}
	mapping (address => votingOption) votingOptions;

	function TrondheimVoting() {
		owner = msg.sender;
	}

	function addVoter(address voter) {
		require(msg.sender == owner);
		voters[voter].registrered = true;
	}

	function addOption(address sendMoneyTo, string name) {
		require(msg.sender == owner);
		votingOptions[sendMoneyTo].isVotingOption = true;
		votingOptions[sendMoneyTo].name = name;
	}
}
