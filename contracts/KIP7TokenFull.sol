pragma solidity ^0.5.0;

import "./KIP7Mintable.sol";
import "./KIP7Metadata.sol";
import "./KIP7NTD.sol";

contract KIP7TokenFull is KIP7NTD, KIP7Mintable, KIP7Metadata {
    constructor(string memory name, string memory symbol, uint8 decimals, uint256 initialSupply) KIP7Metadata(name, symbol, decimals) public {
        //_mint(msg.sender, initialSupply);
    }
}
