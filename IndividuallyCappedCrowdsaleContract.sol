pragma solidity >=0.6.0 <0.8.0;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/crowdsale/emission/AllowanceCrowdsale.sol";
import "@openzeppelin/contracts/crowdsale/validation/IndividuallyCappedCrowdsale.sol";

//有配额的众筹合约
contract IndividuallyCappedCrowdsaleContract is Crowdsale, AllowanceCrowdsale, IndividuallyCappedCrowdsale {
    constructor(
        uint rate, //兑换比例
        address payable wallet, //接收ETH受益人地址
        IERC20 token, //代币地址
        address tokenWallet, //代币从这个地址发送
     ) public 
     AllowanceCrowdsale(tokenWallet)
     Crowdsale(rate, wallet, token)
     public
     {

     }
}