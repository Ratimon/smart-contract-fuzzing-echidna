// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import {TokenWhale} from "../TokenWhale.sol";

contract EchidnaFuzzTokenWhale is TokenWhale {

    address echidna_caller = msg.sender;
    // TokenWhale tokenWhale;

    constructor() TokenWhale(echidna_caller)  {
        // tokenWhale = new TokenWhale(echidna_caller);
    }

    function echidna_test_balance() public view returns (bool) {
        return !isComplete();
    }



}

// contract EchidnaFuzzTokenWhale  {

//     address echidna_caller = msg.sender;
//     TokenWhale tokenWhale;

//     constructor()  {
//         tokenWhale = new TokenWhale(echidna_caller);
//     }

//     function echidna_test_balance() public view returns (bool) {
//         return !tokenWhale.isComplete();
//     }



// }