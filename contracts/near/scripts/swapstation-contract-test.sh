# https://explorer.testnet.near.org/accounts/contract-staging.swapstationio.testnet
export MAINID=swapstationio.testnet
export SSID=contract-staging.swapstationio.testnet
export NFTID=nftsample.swapstationio.testnet
export ALICEID=jeffreylewis-alice.testnet
export BOBID=jeffreylewis-bob.testnet

# Init
near call $SSID init '{ "owner_id": "'$MAINID'" }' --accountId $MAINID

# Set transfer gas
near call $SSID owner_set_config_transfer_gas '{ "gas": "20000000000000" }' --accountId $MAINID

# View owner
near call $SSID get_owner '{}' --accountId $MAINID
near call $SSID get_transfer_gas_amount '{}' --accountId $MAINID

# Testing
near call $SSID send_tokens '{ "amount": "20000000000000", "to": "'$BOBID'" }' --accountId $ALICEID --deposit 0.1 --gas 20000000000000
