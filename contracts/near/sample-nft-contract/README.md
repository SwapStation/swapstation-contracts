## NFT Contract Sample

This package contains only the build output from the official NEAR NFT example contract from https://github.com/near-examples/NFT.
We are using this to create dummy NFTs for testing and development of NFT Exchange.

See [README](https://github.com/SwapStation/swapstation-contracts) for setup instructions.

### Usage Instructions

#### Pre-Requisite
https://docs.near.org/tools/near-cli

```
npm install -g near-cli
```
#### NEAR Accounts Creation and Setup
Create subaccount for nftsample
```
near create-account nftsample.swapstationio.testnet --masterAccount swapstationio.testnet --initialBalance 10
```

#### Deploying to Development Environment

1. Open a new terminal.

2. Deploy the contract to a development account. Account ID will be automatically generated.
```
near dev-deploy --wasmFile res/non_fungible_token.wasm
```

3. Set the environment variable of the development account.
```
source neardev/dev-account.env
echo $CONTRACT_NAME
```

4. Initialize the NFT contract and verify.
```
near call $CONTRACT_NAME new_default_meta '{"owner_id": "'$CONTRACT_NAME'"}' --accountId $CONTRACT_NAME
near view $CONTRACT_NAME nft_metadata
```

#### Deploying to Testnet

1. Navigate to this folder, then Open a new terminal. Login to NEAR CLI if you haven't done so.

```
near login
```

2. Set the environment variable of the testnet account.
```
export NFTID=nftsample.swapstationio.testnet
```

3. Deploy the contract to the testnet account.
```
near deploy --wasmFile res/non_fungible_token.wasm --accountId $NFTID
```

4. Initialize the NFT contract and verify.
```
near call $NFTID new_default_meta '{"owner_id": "'$NFTID'"}' --accountId $NFTID
near view $NFTID nft_metadata
```

#### Minting & Transferring

**Mint**
```
export NFTID=swapstationio.testnet

near call $NFTID nft_mint '{"token_id": "0", "receiver_id": "'$NFTID'", "token_metadata": { "title": "Olympus Mons", "description": "Tallest mountain in charted solar system", "media": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Olympus_Mons_alt.jpg/1024px-Olympus_Mons_alt.jpg", "copies": 1}}' --accountId $NFTID --deposit 0.1
```

**Transfer**
```
export ALICEID=jeffreylewis-alice.testnet

near call $NFTID nft_transfer '{"token_id": "0", "receiver_id": "'$ALICEID'", "memo": "transfer ownership"}' --accountId $NFTID --depositYocto 1
```

**Get Owner Tokens**
```
export BOBID=jeffreylewis-bob.testnet

near view $NFTID nft_tokens_for_owner '{"account_id": "'$ALICEID'"}'
near view $NFTID nft_tokens_for_owner '{"account_id": "'$BOBID'"}'
```
