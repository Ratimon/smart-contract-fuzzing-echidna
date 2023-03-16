// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;
pragma abicoder v2;

import {CommonBase} from "@forge-std/Base.sol";
import {StdCheats} from "@forge-std/StdCheats.sol";
import {StdUtils} from "@forge-std/StdUtils.sol";

import {TokenSale} from "../../src/TokenSale.sol";


contract Handler is CommonBase, StdCheats, StdUtils {
    TokenSale public tokenSale;

    constructor(TokenSale _tokenSale) {
        tokenSale = _tokenSale;
        deal(address(this), 1 ether);
    }

    // function buy(uint256 tokenAmountToBuy, uint256 weiAmountToSend) public {

    //     tokenAmountToBuy = bound(tokenAmountToBuy, 0, type(uint256).max);
    //     weiAmountToSend = bound(weiAmountToSend, 0, address(this).balance);

    //     vm.assume(tokenAmountToBuy !=weiAmountToSend);

    //     tokenSale.buy{value: weiAmountToSend}(tokenAmountToBuy);
    // }

    // function sell(uint256 amount) public {
    //     amount = bound(amount, 0.5 ether, tokenSale.balanceOf(address(this)));
    //     tokenSale.sell(amount);
    // }

    function buy_then_sell(uint256 tokenAmountToBuy) public {
    
        tokenAmountToBuy = bound(tokenAmountToBuy, 0, type(uint256).max);

        uint256 PRICE_PER_TOKEN = 1 ether;
        uint256 weiAmountToSend = (tokenAmountToBuy * PRICE_PER_TOKEN);

        vm.assume(tokenAmountToBuy != weiAmountToSend);


        tokenSale.buy{value: weiAmountToSend}(tokenAmountToBuy);
        tokenSale.sell(1);
    }


    receive() external payable {}
}