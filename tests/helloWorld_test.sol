// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.34;
import "../HelloWorld.sol";


contract HelloWorld_Test{
    HelloWorld public hw; 
    constructor() {
        hw = new HelloWorld();
    
    }
    function testHelloWorld() public {
        string memory result = hw.helloWorld("Alice");
        assert(
            keccak256(bytes(result)) == keccak256(bytes("hello Alice"))
        );
    }

    function testHelloWorldView() public {
        hw.helloWorldNo("Bob");
        string memory result = hw.helloWorldView();
        string memory helloName = string(abi.encodePacked("hello ", hw.name()));
        assert(
            keccak256(bytes(result)) == keccak256(bytes(helloName))
        );
    }

    function testHelloWorldNo() public{
        hw.helloWorldNo("Bob");
        string memory result = hw.helloWorldNo("Jane");
        assert (
            keccak256(bytes(result)) == keccak256(bytes("hello Jane"))
        );
    }
}