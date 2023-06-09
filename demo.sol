// SPDX-License-Identifier: MI
pragma solidity ^0.8.18;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
contract Pricecounter{
    AggregatorV3Interface internal pricefeed;
    constructor(){
          pricefeed=AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
    }

    function getLatestPrice() public view   returns (int){

            (,int price,,,)=pricefeed.latestRoundData();
            return price;        
}
}