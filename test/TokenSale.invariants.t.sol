// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;
pragma abicoder v2;

import {Test} from "@forge-std/Test.sol";
import {StdInvariant} from "@forge-std/StdInvariant.sol";

import {TokenSale} from "../src/TokenSale.sol";
import {Handler} from "./handlers/Handler.sol";


contract TokenSaleInvariants is StdInvariant, Test {

    TokenSale tokenSale;
    Handler public handler;

    function setUp() public {
        tokenSale = new TokenSale{value: 1 ether}();
         vm.label(address(tokenSale), "tokenSale");

        handler = new Handler(tokenSale);
        vm.label(address(handler), "Handler");

        targetContract(address(handler));
        
        vm.label(address(this), "TokenSaleInvariants");
    }

    /**
     * @notice  // isComplete means  address(this).balance < 1 ether
     */
    function invariant_is_ETH_drained() public {
        assertEq(tokenSale.isComplete(), false);
    }

}

