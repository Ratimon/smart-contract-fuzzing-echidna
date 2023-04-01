// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import {TokenSale} from "../TokenSale.sol";

contract EchidnaFuzzTokenSale is TokenSale {

    address echidna_caller = msg.sender;

    constructor() TokenSale() payable {
        require(msg.value == 1 ether);
        
    }

    // invariant
    function echidna_test_balance() external view returns (bool) {
        return !isComplete();
    }


    function  test_buy_then_sell(uint256 tokenAmountToBuy) public {
        require( tokenAmountToBuy > 0);
        uint256 PRICE_PER_TOKEN = 1 ether;
        uint256 weiAmountToSend = (tokenAmountToBuy * PRICE_PER_TOKEN);
        this.buy{value: weiAmountToSend}(tokenAmountToBuy);
        sell(1);
        // isComplete means  address(this).balance < 1 ether
        // assert(false);
        assert(isComplete());
    }



}
