## BatchTransfer Smart Contract [[batchTransferContract](https://sepolia.etherscan.io/address/0xe69dbc3ca1a2e23eb0db04b59dd490dcf55e5e97#code)] [[erc20Contract](https://sepolia.etherscan.io/address/0xd2c9a5064d22431eef538b003a6f44f1992eb033#code)]

## Overview

**The BatchTransfer Smart Contract, developed using the `Foundry` framework, is designed to facilitate Ethereum (ETH) transactions in batches. This contract allows for efficient processing of multiple transactions within a single contract execution. In addition to the primary `BatchTransfer` contract, the setup also includes support for deploying and verifying `ERC20` smart contracts as part of the process.**

## Prerequisites
- Docker

## Setup 

1. **Pull the Image**

    ```shell
    docker pull arrjunpradeep/foundry:latest
    ``` 

2. **Configure `.env` file within the directory**

- TEST_PRIVATE_KEY=XXXXXX
- PRIVATE_KEY=XXXXXX
- RPC_URL=XXXXXX
- SEPOLIA_RPC_URL=XXXXXX
- ETHERSCAN_API_KEY=XXXXXX

    **Source the `.env` file**

    ```shell
    source .env
    ``` 

3. **Deploy and Verify the BatchTransfer Smart Contract**

    Run the container for deploying and verifying the `BatchTransfer` smart contract:

    ```shell
    docker run arrjunpradeep/foundry --rpc-url $SEPOLIA_RPC_URL --private-ke
    y $PRIVATE_KEY ./src/batchTransfer.sol:BatchTransfer --verify --etherscan-api-key $ETHERSCAN_API_KEY
    ``` 
4. **Deploy and Verify the ERC20 Smart Contract**

    Run the container for deploying and verifying the `ERC20` smart contract (default name : `USDT`) :

    ```shell
    docker run arrjunpradeep/foundry --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY ./src/erc20.sol:USDT --verify --etherscan-api-key $ETHERSCAN_API_KEY
    ``` 

    **Notes :**

    ****The PRIVATE_KEY is included in the .env file for development purposes only. For production environments, it is recommended to use secure methods to manage sensitive information.****






