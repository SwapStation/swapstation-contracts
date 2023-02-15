# Reference: https://nomicon.io/Standards/Tokens/FungibleToken/

export NFTID=nftsample.swapstationio.testnet
export ALICEID=jeffreylewis-alice.testnet
export BOBID=jeffreylewis-bob.testnet

# View NFT Contract Metadata
near view $NFTID nft_metadata

# View Owner Tokens
near view $NFTID nft_tokens_for_owner '{"account_id": "'$NFTID'"}'
near view $NFTID nft_tokens_for_owner '{"account_id": "'$ALICEID'"}'
near view $NFTID nft_tokens_for_owner '{"account_id": "'$BOBID'"}'

# View Token Metadata
near view $NFTID nft_token '{"token_id": "7"}'

# Response:
#  {
#    "token_id": "1",
#    "owner_id": "alice.near",
#    "approved_account_ids": {
#      "bob": 1,
#    }
#  }

# Transfer
near call $NFTID nft_transfer '{"token_id": "1", "receiver_id": "'$ALICEID'", "memo": "transfer ownership"}' --accountId $NFTID --depositYocto 1

# Approval: Simple Approval
near call $NFTID nft_approve '{ "token_id": "1", "account_id": "bob" }' --accountId alice --depositYocto 1

# Approval: Cross-Contract Approval 
# Explanation: When msg field is included, NFT contract will schedule a cross-contract call to account_id's nft_on_approve method
# If nft_on_approve is not found, error will return but account_id is still approved
near call $NFTID nft_approve '{
   "token_id": "1",
   "account_id": "market",
   "msg": "{\"action\": \"list\", \"price\": \"100\", \"token\": \"nDAI\" }"
 }' --accountId alice --depositYocto 1

# Callback:
# near call market nft_on_approve '{
#    "token_id": "1",
#    "owner_id": "alice",
#    "approval_id": 2,
#    "msg": "{\"action\": \"list\", \"price\": \"100\", \"token\": \"nDAI\" }"
#  }' --accountId nft

# Check Approval
near view $NFTID nft_is_approved '{ "token_id": "1", "approved_account_id": "bob" }'
