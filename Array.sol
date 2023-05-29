// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Array {
    uint[] private values;

    function storeValue(uint value) public {
        values.push(value);
    }

    function getValue(uint initial) public view returns(uint) {
        return values[initial];
    }

    function getNumberOfValues() public view returns(uint) {
        return values.length;
    }
}
