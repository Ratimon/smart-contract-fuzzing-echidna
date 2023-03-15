// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import {TokenSale} from "../TokenSale.sol";

contract EchidnaFuzzTokenSale is TokenSale {

    address echidna_caller = msg.sender;

    constructor() TokenSale() payable {
        require(msg.value == 1 ether);
        
    }

    // /**
    //  * @notice caller buy 1 ETH
    //  */
    // function testBuy(uint256 _value) public {
    //     require(_value == 1);
    //     uint256 weiToSend = _value * 1 ether;
    //     this.buy{value: weiToSend}(_value);
    // }


    // invariant
    function echidna_test_balance() external view returns (bool) {
        return !isComplete();
    }


    // function test_sell(uint256 tokenToBuy, uint256 weiToSend)  external  {

    //      require( tokenToBuy > 0);
    //      require( weiToSend > 0);

    //     require( tokenToBuy > weiToSend);

    //     // uint256 weiToSend = _value * 1 ether;
    //     this.buy{value: weiToSend}(tokenToBuy);

    //     // // uint256 tokenToSell= tokenToBuy;

    //     sell(1);

    //     // isComplete means  address(this).balance < 1 ether
    //     assert(false);
    //     assert(isComplete());

    //     // return !isComplete();
    // }



}
