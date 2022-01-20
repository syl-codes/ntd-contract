pragma solidity ^0.5.0;

import "./KIP7.sol";
import "./roles/MinterRole.sol";
import "./lifecycle/Pausable.sol";

contract KIP7NTD is KIP7, Pausable, MinterRole {

  function mint() external payable {
    require(msg.value > 0, "must be greater than zero.");
    _mint(msg.sender, msg.value);
  }

  function refund() external whenNotPaused {
    msg.sender.transfer(balanceOf(msg.sender));
    _burn(msg.sender, balanceOf(msg.sender));
  }

  function withdraw() external onlyMinter {
    msg.sender.transfer(address(this).balance);
  }
}
