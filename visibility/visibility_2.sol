// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Base {
   
    function privateFunc() private pure returns (string memory) {
        return "private function called";
    }

    function testPrivateFunc() public pure returns (string memory) {
        return privateFunc();
    }

   
    function internalFunc() internal pure returns (string memory) {
        return "internal function called";
    }

    function testInternalFunc() public pure virtual returns (string memory) {
        return internalFunc();
    }

   
    function publicFunc() public pure returns (string memory) {
        return "public function called";
    }

    
    function externalFunc() external pure returns (string memory) {
        return "external function called";
    }


}

contract Sample {
    Base samplebase=new Base();
    function reach() public view returns(string memory) {
    return samplebase.externalFunc();
    }
 
}
