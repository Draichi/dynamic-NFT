// SPDX-Licence-Identifier: MIT
pragma solidity ^0.6.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@chainlink/contracts/src/v0.6/VRFConsumerBase.sol";

contract DungeonsAndDragonsCharacter is ERC721, VRFConsumerBase {

    uint256 internal vrfCoordinator;
    bytes32 internal keyHash;
    uint256 internal fee;

    uint256 public randomResult;

    constructor(
        address _VRFCoordinator,
        address _linkTokenAddress,
        bytes32 _keyHash
    )
        VRFConsumerBase(
            _VRFCoordinator,
            _linkTokenAddress
        )
        ERC721("DungeonsAndDragonsCharacter", "D&D") public
    {
        vrfCoordinator = _VRFCoordinator;
        keyHash = _keyHash;
        fee = 0.1 * 10**18; // 0.1 LINK
    }
}