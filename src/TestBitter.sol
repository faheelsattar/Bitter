// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.10;

import {Bitter} from "./library/Bitter.sol";

contract TestBitter {
    using Bitter for uint256;
    uint256 num = 0x51061A;

    function updateAtIndex() external view returns (uint256) {
        return num.updateAtIndex(4, 9);
    }

    function getValueAtIndex() external view returns (uint256) {
        return num.getValueAtIndex(0);
    }
}
