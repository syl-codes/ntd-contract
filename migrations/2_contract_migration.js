var kip7 = artifacts.require('KIP7TokenFull');

module.exports = function(deployer) {
  deployer.deploy(kip7, "NT DAO", "NTD", 18, 0);
};
