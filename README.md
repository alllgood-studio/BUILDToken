![BUILD Token](logo.png "BUILD Token")

# BUILD Token smart contract

* _Standard_                                                                            : [ERC20](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md)
* _[Name](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#name)_            : BUILD
* _[Ticker](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#symbol)_        : BUILD
* _[Decimals](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#decimals)_    : 18
* _Emission_                                                                            : Mintable
* _Crowdsales_                                                                          : 2
* _Fiat dependency_                                                                     : No
* _Tokens locked_                                                                       : Yes

## Smart-contracts description

Extended tokens are minted after the all stages are finished.  
There is a special function to return 3rd party tokens that were sent by mistake (function retrieveTokens()).  
Each stage has a direct minting function in wei. This is made to support the external payment gateways.

### Contracts contains
1. _Token_ 
2. _Stage 1_
3. _Stage 2_ 
4. _Configurator_ - contract with main configuration for production

### How to manage contract
To start working with contract you should follow next steps:
1. Compile it in Remix with enamble optimization flag and compiler 0.4.18
2. Deploy bytecode with MyEtherWallet. Gas 5100000 (actually 5073514).
3. Call 'deploy' function on addres from (3). Gas 4000000 (actually 3979551). 

Contract manager must call finishMinting after each crowdsale milestone!
To support external mint service manager should specify address by calling _setDirectMintAgent_. After that specified address can direct mint tokens by calling _mintTokensByETHExternal_ and _mintTokensExternal_.

### How to invest
To purchase tokens investor should send ETH (more than minimum 0.1 ETH) to corresponding crowdsale contract.
Recommended GAS: 250000, GAS PRICE - 21 Gwei.

### Wallets with ERC20 support
1. MyEtherWallet - https://www.myetherwallet.com/
2. Parity 
3. Mist/Ethereum wallet

EXODUS not support ERC20, but have way to export key into MyEtherWallet - http://support.exodus.io/article/128-how-do-i-receive-unsupported-erc20-tokens

Investor must not use other wallets, coinmarkets or stocks. Can lose money.

## Tokens distribution

* _Bounty tokens percent_       : 2% - locked during 30 days after satges
* _Advisors tokens percent_     : 3% - locked during 90 days after stages
* _Founders tokens percent_     : 11% - locked during 180 days after stages 
* _Company tokens percent_      : 4% 
* _Stages_                      : 80% 

## Main network configuration

* _Bounty tokens wallet_        : 0x3180e7B6E726B23B1d18D9963bDe3264f5107aef
* _Advisors tokens wallet_      : 0x36A8b67fe7800Cd169Fd46Cd75824DC016a54d13
* _Founders tokens wallet_      : 0xDf9CAAE51eED1F23B4ae9AeCDbdeb926252eFFC4
* _Company tokens wallet_       : 0x7D648BcAbf05CEf119C9a11b8E05756a41Bd29Ad
* _Contracts manager_           : 0x66C1833F667eAE8ea1890560e009F139A680F939

### Links
1. _Token_ - https://etherscan.io/token/0x9217d91ae8660b5bb8af6d27b2506f40ddf6d414
2. _Stage 1_ - https://etherscan.io/address/0x54b9eaee92a9bff63cd445a65bd19078116fe927
3. _Stage 2_ - https://etherscan.io/address/0x6e2d5d2d0dc99ececb27298c411cc0886680ffea

### Features
* Manually mint tokens by owner or sale agent at any time until token minting finished. 
* Manually mint tokens in ether value by owner or sale agent at corresponding sale contract during current sale processing.  

### Crowdsale stages

#### Stage 1
* _Minimal purchase limit_      : 0.1 ETH
* _Base price_                  : 1 ETH = 6650 Tokens
* _Softcap_                     : 2500 ETH
* _Hardcap_                     : 12 000 ETH
* _Period_                      : 117 days
* _Start_                       : 23 Jul 2018 00:00:00 GMT
* _Wallet_                      : 0xB53E3f252fBCD041e46Aad82CFaEe326E04d1396

#### Stage 2
* _Minimal purchase limit_      : 0.1 ETH
* _Base price_                  : 1 ETH = 5000 Tokens
* _Hardcap_                     : 23 000 ETH
* _Start_                       : 18 Nov 2018 00:00:00 GMT
* _Wallet_                      : 0x8f1C4E049907Fa4329dAC9c504f4013620Fa39c9

##### Milestones
1. 10 days, bonus +25%
2. 15 days, bonus +20%
3. 15 days, bonus +15%
4. 15 days, bonus +10%
5. 30 days, bouns +5%


## Ropsten network configuration 

### Links
1. _Token_ - https://ropsten.etherscan.io/address/0x852cf010172b5bc9206acdd9187faa31de49dd22
2. _Stage 1_ - https://ropsten.etherscan.io/address/0xe7b900450676e91597708bc095d464fbb09f015d
3. _Stage 2_ - https://ropsten.etherscan.io/address/0xa3898b742eb0882473b328cda489b1f758278a49


### Crowdsale stages

#### Stage 1

* _Minimal purchase limit_      : 0.1 ETH
* _Base price_                  : 1 ETH = 6650 Tokens
* _Softcap_                     : 1.5 ETH
* _Hardcap_                     : 2 ETH
* _Period_                      : 42 days
* _Start_                       : 26 Apr 2018 00:00:00 GMT
* _Wallet_                      : 0x8fd94be56237ea9d854b23b78615775121dd1e82

##### Purchasers

* 1.5 ETH =>  9,975 tokens, gas = 153551
https://ropsten.etherscan.io/tx/0x0220b84d39d34f5742f20238c345d1fe3b64895459a3a0f579f18ac225918a57

* 0.01 ETH => rejected txn, less then mininal investment limit, gas = 22466
https://ropsten.etherscan.io/tx/0xdc8780dfdeddb8a30785d049dd019743d8d286afaa9831db2d6e1ea1c809d98b

* 0.5 ETH => 3,325 tokens, gas = 57914
https://ropsten.etherscan.io/tx/0xa405c86f484387925a918a9bc51f3f27f79553cc37fbb267aa9e48fdb3529ccc

* 1 ETH => rejected txn, hardcap is reached, gas = 29084
https://ropsten.etherscan.io/tx/0xf9006070752d1948fd6b947bca2f66b4ece068d0733b613ac7d7b12483b77ea2

##### Service operations

* finish, gas = 47177
https://ropsten.etherscan.io/tx/0x3df096144ed1defdf746ca5ef1bac8ad595470797c8ca3f16b68c84b9c2a0392

#### Stage 2

* _Minimal purchase limit_      : 0.1 ETH
* _Base price_                  : 1 ETH = 5000 Tokens
* _Hardcap_                     : 23 000 ETH
* _Start_                       : 26 Apr 2018 00:00:00 GMT
* _Wallet_                      : 0x8fd94be56237ea9d854b23b78615775121dd1e82
* _Bounty tokens wallet_        : 0x8Ba7Aa817e5E0cB27D9c146A452Ea8273f8EFF29
* _Advisors tokens wallet_      : 0x24a7774d0eba02846580A214eeca955214cA776C
* _Founders tokens wallet_      : 0xaa8ed6878a202eF6aFC518a64D2ccB8D73f1f2Ca
* _Company tokens wallet_       : 0x470a2D1105EaE6aAe879623357F615Ab9cbf906E
* _Bounty tokens percent_       : 2% (locked untill 30 days after all stages)
* _Advisors tokens percent_     : 3%
* _Founders tokens percent_     : 11%
* _Company tokens percent_      : 4%

_Milestones_

1. 15 days, bonus +25%
2. 15 days, bonus +20%
3. 15 days, bonus +15%
4. 15 days, bonus +10%
5. 15 days, bonus +5%
6. 15 days, without bonuses

##### Purchasers

* 1 ETH => 6250 tokens (25% bonus), gas = 77174
https://ropsten.etherscan.io/tx/0xba2aea80dc2efb19b89596dd11c18080e94d1d9a08a2ddcd768fffdfdb331698

* 1 ETH => 6000 tokens (20% bonus), gas = 63606
https://ropsten.etherscan.io/tx/0xe1f0b54a47efa065c4250ef9f3a2f2b1fa1f5ce3bc3de9cd6d93eb93c461628e

##### Service operations

* setStart, gas = 27976
https://ropsten.etherscan.io/tx/0x00491a41ed3eeba5fc8061aa21804df347f51f0eb5c8532f698d7fb7c4f60704

* finish, gas = 281406
https://ropsten.etherscan.io/tx/0x6294eebb9bbffe3370a032b90d41b35feaec34e26ef6cbe6780c4741dc7a7cd9

### Token holders
https://ropsten.etherscan.io/token/0x852cf010172b5bc9206acdd9187faa31de49dd22#balances

##### Token transfers

* transfer 550 tokens, gas = 53274
https://ropsten.etherscan.io/tx/0x8dc57e80cac26c1a723dc954a467ad05725cfcab9f25ef0d86c264f4a047ae71

* transfer 600 tokens => rejected txn, bounty wallet is locked, gas = 25556
https://ropsten.etherscan.io/tx/0x8c7bb6ca482a12333aea49202ad9af07038f342dc8ea0f5c9d95e68943e92847
