# Swap Station Contract - NEAR

#### Deploying to NEAR development environment

Pre-requisite: [NEAR CLI](https://docs.near.org/docs/tools/near-cli#installation)
1. Clone the source code from repo

2. Deploy the sample NFT Contract

```
From the project root folder:
> cd packages/contract-nft
> near dev-deploy --wasmFile res/non_fungible_token.wasm
> source neardev/dev-account.env
> near call $CONTRACT_NAME new_default_meta '{"owner_id": "'$CONTRACT_NAME'"}' --accountId $CONTRACT_NAME
```
*View packages/contract-nft/README.md for explanation of each steps.*

2. Build and deploy the SwapStation Contract
```
From the project root folder:
> cd packages/swapstation-contract
> yarn
> yarn deploy:dev
```

#### Interacting With the Contracts

Note: Refer to /scripts folder for examples

Example calls:

```
export ID=jeffreylewis.testnet
export ALICEID=jeffreylewis-alice.testnet
export BOBID=jeffreylewis-bob.testnet
```

# View Owner Tokens
near view nft.$ID nft_tokens_for_owner '{"account_id": "'$ALICEID'"}'
near view nft.$ID nft_tokens_for_owner '{"account_id": "'$BOBID'"}'
near view nft.$ID nft_tokens_for_owner '{"account_id": "'$ID'"}'
near view nft.$ID nft_tokens_for_owner '{"account_id": "'exchange.$ID'"}'

# Transfer
near call nft.$ID nft_transfer '{"token_id": "1", "receiver_id": "'exchange.$ID'", "memo": "transfer ownership"}' --accountId $ALICEID --depositYocto 1
