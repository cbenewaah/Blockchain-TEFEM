//SPDX-License-Identifier:MIT
pragma solidity ^0.8.16;

import "forge-std/Test.sol"; 
import {SimpleStorage} from "../src/Simple-Storage (2).sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
        simpleStorage.store(0);
    }

    function test_store() public {
        simpleStorage.store(3);
        assertEq(simpleStorage.retrieve(), 3);
    }

    function test_addPeople() public {
        simpleStorage.addPeople("Christabel", 3);
        assertEq(simpleStorage.getNum("Christabel"), 3);
    }
}