// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import {Token} from "../Token.sol";

contract EchidnaFuzzToken is Token {

    address echidna_caller = msg.sender;

    constructor() Token(20)  {
    }

    function echidna_test_balance() public view returns (bool) {
        return balanceOf(echidna_caller)>20;
    }

    function  test_transfer(uint256 amountToTransfer) public {
        require( amountToTransfer > 0);

        transfer(echidna_caller, amountToTransfer);
        assert(balanceOf(echidna_caller)>20);
    }


}
