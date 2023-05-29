// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "hardhat/console.sol";
import "../contracts/Array.sol";

contract TestArray {

    Array public array;

    function beforeEach() public {
        array = new Array();
    }

    function testStoreVallue() public {
        uint value = 5;
        array.storeValue(value);

        uint result = array.getValue(0);

        Assert.equal(result,value, "It should store the correct value");
    }

    function testNumberOfValue() public {
        array.storeValue(99);
        uint newSize = array.getNumberOfValues();
        Assert.equal(newSize, 1, "it should increase the size");
    }

    function testMultipleValue() public {
        for(uint8 i = 0; i < 10; i++) {
            uint value=i;
            array.storeValue(value);
            uint result = array.getValue(i);
            Assert.equal(result,value,"It should store the correct value for multiple vallues");
        }
    }
}
