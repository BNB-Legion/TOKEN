// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./BEP20.sol";

contract BEP20Token is BEP20 {

     constructor(
        string memory name,
        string memory symbol,
        uint256 totalSupply
        ) BEP20(name, symbol) {
        _mint(msg.sender, totalSupply * (10**uint256(decimals())));
    }


    function decimals() public view virtual override returns (uint8) {
        return 9;
    }
}