const NFTSimple = artifacts.require("NFTSimple");

module.exports = async (deployer, network, [defaultAccount]) => {
  deployer.deploy(NFTSimple);
};
