# https://explorer.testnet.near.org/accounts/contract.swapstationio.testnet
export MAINID=swapstationio.testnet
export SSID=contract.swapstationio.testnet

export NFTID=nftsample.swapstationio.testnet
export ALICEID=jeffreylewis-alice.testnet
export BOBID=jeffreylewis-bob.testnet

# Testing
# near call $SSID test_transfer '{ 
#     "request_token_id": "6", 
#     "maker_id": "jeffreylewis-bob.testnet", 
#     "offer_token_id": "7", 
#     "taker_id": "jeffreylewis-alice.testnet", 
#     "gas": "20 000 000 000 000"
#     }' --accountId $ALICEID --deposit 0.1 --gas 300 000 000 000 000

# Init
near call $SSID init '{ "owner_id": "'$MAINID'" }' --accountId $MAINID

# Owner: Set transfer gas
near call $SSID owner_set_config_transfer_gas '{ "gas": "20000000000000" }' --accountId $MAINID

# View owner
near call $SSID get_owner '{}' --accountId $MAINID
near call $SSID get_transfer_gas_amount '{}' --accountId $MAINID

# View Swap Agreements
near call $SSID get_all_swap_agreements '{}' --accountId $MAINID

# Owner: Delete a swap agreement
near call $SSID owner_delete_swap_agreement '{ "request_code": "1667001448695", "offer_code:": "1667005842153" }' --accountId $MAINID

# Accept as Maker agreement (Alice)
near call $SSID accept_swap_as_maker '{ 
    "request_code": "1", 
    "offer_code": "2", 
    "taker_address": "'$BOBID'", 
    "request_nft_contract": "'$NFTID'", 
    "request_token_id": "6", 
    "offer_nft_contract": "'$NFTID'", 
    "offer_token_id": "7" 
    }' --accountId $ALICEID --deposit 0.1

# Accept as Taker agreement (Bob)
near call $SSID accept_swap_as_taker '{ 
    "request_code": "1", 
    "offer_code": "2", 
    "maker_address": "'$ALICEID'", 
    "request_nft_contract": "'$NFTID'", 
    "request_token_id": "6", 
    "offer_nft_contract": "'$NFTID'", 
    "offer_token_id": "7" 
    }' --accountId $BOBID --deposit 0.1 --gas 30000000000000

# NFT Approvals
near call $NFTID nft_approve '{ "token_id": "6", "account_id": "'$SSID'" }' --accountId $BOBID --depositYocto 420000000000000000000
near call $NFTID nft_approve '{ "token_id": "7", "account_id": "'$SSID'" }' --accountId $ALICEID --depositYocto 420000000000000000000

# NFT Approvals
near call $NFTID nft_approve '{
   "token_id": "5",
   "account_id": "'$SSID'",
   "msg": "{\"request_code\": \"1\", \"offer_code\": \"2\" }"
 }' --accountId $ALICEID --depositYocto 420000000000000000000

# Check Approval
near view $NFTID nft_is_approved '{ "token_id": "4", "approved_account_id": "'$SSID'" }'
