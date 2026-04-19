// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.34;
contract HelloWorld{
    string public name;
    function helloWorld(string memory _name) public pure returns (string memory){
        return string(abi.encodePacked("hello ", _name));       
    }
    function helloWorldView() public view returns (string memory){
        return string(abi.encodePacked("hello ", name));
    }
    function helloWorldNo(string memory _name) public returns (string memory){
        name = _name;
        return string(abi.encodePacked("hello ", name));
    }


}