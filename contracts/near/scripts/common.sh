export ALICEID=jeffreylewis-alice.testnet
export BOBID=jeffreylewis-bob.testnet

# Create account
near create-account contract-staging.swapstationio.testnet --masterAccount swapstationio.testnet --initialBalance 10

# Check balance of ALICE
near state $ALICEID

# Check balance of ALICE
near state $BOBID

#Account jeffreylewis-alice.testnet
# {
#   amount: '195078634406710870199999993',
#   block_hash: '4cRV9Dds9iLAreHeS7AnK2KKXggfmftoDXijrjUaqgmn',
#   block_height: 115870971,
#   code_hash: '11111111111111111111111111111111',
#   locked: '0',
#   storage_paid_at: 0,
#   storage_usage: 10938,
#   formattedAmount: '195.078634406710870199999993'
# }
# Account jeffreylewis-bob.testnet
# {
#   amount: '197699735475221332199999982',
#   block_hash: '9gW9gWGf46bwmimatgYPEpT6KRLfHjnbPsvyu4HVPQDi',
#   block_height: 115870995,
#   code_hash: '11111111111111111111111111111111',
#   locked: '0',
#   storage_paid_at: 0,
#   storage_usage: 9836,
#   formattedAmount: '197.699735475221332199999982'
# }

# Account jeffreylewis-alice.testnet
# {
#   amount: '194977936141390131599999993',
#   block_hash: 'ALGAJYQGzX5dqZhUmaQ5nS8wGpbGcqnRuCPpj45J3cx',
#   block_height: 115871959,
#   code_hash: '11111111111111111111111111111111',
#   locked: '0',
#   storage_paid_at: 0,
#   storage_usage: 10938,
#   formattedAmount: '194.977936141390131599999993'
# }
# {
#   amount: '197699735475241332199999982',
#   block_hash: '9LuJWHd5VHzpCL6SWQtQ3PkRtRxNYbhdxTySmvXqxCmD',
#   block_height: 115871986,
#   code_hash: '11111111111111111111111111111111',
#   locked: '0',
#   storage_paid_at: 0,
#   storage_usage: 9836,
#   formattedAmount: '197.699735475241332199999982'
# }
