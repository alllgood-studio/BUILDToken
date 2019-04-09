pragma solidity ^0.4.18;

import './ownership/Ownable.sol';
import './AssembledCommonSale.sol';
import './Token.sol';
import './PreITO.sol';
import './ITO.sol';

contract Configurator is Ownable {

  Token public token;

  PreITO public preITO;

  ITO public ito;

  function deploy() public onlyOwner {

    address manager = 0x66C1833F667eAE8ea1890560e009F139A680F939;

    token = new Token();

    preITO = new PreITO();
    ito = new ITO();

    commonConfigure(preITO);
    commonConfigure(ito);

    preITO.setWallet(0xB53E3f252fBCD041e46Aad82CFaEe326E04d1396);
    preITO.setStart(1532304000); // 23 Jul 2018 00:00:00 GMT
    preITO.setPeriod(42);
    preITO.setPrice(6650000000000000000000);
    preITO.setSoftcap(2500000000000000000000);
    preITO.setHardcap(12000000000000000000000);

    token.setSaleAgent(preITO);

    ito.setWallet(0x8f1C4E049907Fa4329dAC9c504f4013620Fa39c9);
    ito.setStart(1537142400); // 17 Sep 2018 00:00:00 GMT
    ito.setHardcap(23000000000000000000000);
    ito.setPrice(5000000000000000000000);

    ito.addMilestone(10, 25);
    ito.addMilestone(15, 20);
    ito.addMilestone(15, 15);
    ito.addMilestone(15, 10);
    ito.addMilestone(30, 5);


    ito.addWallet(0x3180e7B6E726B23B1d18D9963bDe3264f5107aef, 2);
    ito.addWallet(0x36A8b67fe7800Cd169Fd46Cd75824DC016a54d13, 3);
    ito.addWallet(0xDf9CAAE51eED1F23B4ae9AeCDbdeb926252eFFC4, 11);
    ito.addWallet(0x7D648BcAbf05CEf119C9a11b8E05756a41Bd29Ad, 4);

    ito.lockAddress(0x3180e7B6E726B23B1d18D9963bDe3264f5107aef,30);
    ito.lockAddress(0x36A8b67fe7800Cd169Fd46Cd75824DC016a54d13,90);
    ito.lockAddress(0xDf9CAAE51eED1F23B4ae9AeCDbdeb926252eFFC4,180);

    preITO.setNextSaleAgent(ito);

    token.transferOwnership(manager);
    preITO.transferOwnership(manager);
    ito.transferOwnership(manager);
  }

  function commonConfigure(AssembledCommonSale sale) internal {
    sale.setPercentRate(100);
    sale.setMinInvestedLimit(100000000000000000);
    sale.setToken(token);
  }

}

