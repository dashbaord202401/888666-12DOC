// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

contract Challenge02 {
    function getConcatedString(string memory input) public pure returns(string memory) {
        return string.concat("Merry Christmas ", input);
    }
}