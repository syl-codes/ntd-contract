pragma solidity ^0.5.0;

import "./KIP7Metadata.sol";
import "./KIP7NTD.sol";

contract KIP7TokenFull is KIP7NTD, KIP7Metadata {
    constructor(string memory name, string memory symbol, uint8 decimals) KIP7Metadata(name, symbol, decimals) public {
    }
}
