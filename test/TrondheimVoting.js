var Vote = artifacts.require("./TrondheimVoting.sol");

contract('Vote', function() {
    it("should cast a vote and see it go through", function () {
        return Vote.deployed().then(function (instance) {
            return instance.Vote.call(adress); //End-point adress
        }).then(function (result) {
            assert.equal(result.valueOf(), true, "Vote was not did");
        });
    });
    it("add a voter the contract", function() {
        return Vote.deployed().then(function (instanace) {
            return instanace.AddVoter.call(aderess);
        }).then(function (result) {
            assert.equal(result.valueOf(), true, "voter was not added to contract")
        });
    });
});

