// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import {TokenWhale} from "../TokenWhale.sol";

contract EchidnaFuzzTokenWhale is TokenWhale {

    address echidna_caller = msg.sender;

    constructor() TokenWhale(echidna_caller)  {
    }

    function echidna_test_balance() public view returns (bool) {
        return !isComplete();
    }

}
