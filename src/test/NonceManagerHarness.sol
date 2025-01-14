// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {NonceManager} from "../core/NonceManager.sol";

contract NonceManagerHarness is NonceManager {
    function validateAndUpdateNonce(address sender, uint256 nonce) public returns (bool) {
        return _validateAndUpdateNonce(sender, nonce);
    }

    function calculateNonce(uint256 sequenceNumber, uint192 key) public pure returns (uint256) {
        return (uint256(key) << 64) + sequenceNumber;
    }
}
