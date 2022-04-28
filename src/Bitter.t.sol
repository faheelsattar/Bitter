// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.10;

import "ds-test/test.sol";

import "./TestBitter.sol";

contract BitterTest is DSTest {
    TestBitter bitter;

    function setUp() public {
        bitter = new TestBitter();
    }

    function testUpdateAtIndex() public {
        uint256 result = bitter.updateAtIndex();
        emit log_named_uint("updated bytes", result);
        emit log_named_bytes32("updated bytes", bytes32(result));
    }

    function testGetValueAtIndex() public {
        uint256 result = bitter.getValueAtIndex();
        emit log_named_uint("getter bytes", result);
    }
}
