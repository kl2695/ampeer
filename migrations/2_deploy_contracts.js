var TokenGeneration = artifacts.require("TokenGeneration");

module.exports = function (deployer) {
    deployer.deploy(TokenGeneration);
};