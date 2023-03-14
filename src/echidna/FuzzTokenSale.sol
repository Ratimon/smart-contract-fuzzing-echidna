// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import {TokenSale} from "../TokenSale.sol";

contract EchidnaFuzzTokenSale is TokenSale {

    // address echidna_caller = msg.sender;

    constructor() TokenSale() payable {
        require(msg.value == 1 ether);

    }

    function echidna_test_balance() public view returns (bool) {
        return !isComplete();
    }


}
