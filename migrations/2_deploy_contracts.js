var TrondheimVoting = artifacts.require("./TrondheimVoting.sol");
module.exports = function(deployer) {
  deployer.deploy(TrondheimVoting);
};
