export NFTID=nftsample.swapstationio.testnet
export ALICEID=jeffreylewis-alice.testnet
export BOBID=jeffreylewis-bob.testnet
export EDDYID=eddycrypto.testnet

#######################################################
# PART 1
#######################################################

# Mint tokens
near call $NFTID nft_mint '{"token_id": "1", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] Karafuru #2321", "description": "Karafuru is home to 5555 generative arts where colors reign supreme. Leave the drab reality and enter the world of Karafuru by Museum of Toys.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/a1.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "2", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] Karafuru #4827", "description": "Karafuru is home to 5555 generative arts where colors reign supreme. Leave the drab reality and enter the world of Karafuru by Museum of Toys.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/a2.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "3", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] Karafuru #3982", "description": "Karafuru is home to 5555 generative arts where colors reign supreme. Leave the drab reality and enter the world of Karafuru by Museum of Toys.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/a3.png", "copies": 1}}' --accountId $NFTID --deposit 0.1

near call $NFTID nft_mint '{"token_id": "4", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] Coolmans Universe #4078", "description": "Spesh is looking for his best friend throughout Coolmans Universe. To travel through this universe Spesh uses a surfboard and a compass.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/s1.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "5", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] Coolmans Universe #2639", "description": "Spesh is looking for his best friend throughout Coolmans Universe. To travel through this universe Spesh uses a surfboard and a compass.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/s2.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "6", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] Coolmans Universe #8023", "description": "Spesh is looking for his best friend throughout Coolmans Universe. To travel through this universe Spesh uses a surfboard and a compass.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/s3.png", "copies": 1}}' --accountId $NFTID --deposit 0.1

near call $NFTID nft_mint '{"token_id": "7", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] CryptoCities #034 - Sydney", "description": "An art collection made up of voxel-based microcosms displaying iconic cities from real life/fiction. Only 333 unique cities to be minted.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/c1.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "8", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] CryptoCities #029 - Athens", "description": "An art collection made up of voxel-based microcosms displaying iconic cities from real life/fiction. Only 333 unique cities to be minted.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/c2.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "9", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] CryptoCities #056 - Undead City", "description": "An art collection made up of voxel-based microcosms displaying iconic cities from real life/fiction. Only 333 unique cities to be minted.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/c3.png", "copies": 1}}' --accountId $NFTID --deposit 0.1

near call $NFTID nft_mint '{"token_id": "10", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] FatPenguins #1089", "description": "Fat Penguins is a collection of 6000 Fat Penguins NFT randomly generated on the Ethereum chain. 6000 Fat Penguins create a community called: Ice lollies. Our penguins are cute, funny, sad, and punk. They are funny and afraid of the cold in the Ethereum.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/fp1.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "11", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] FatPenguins #1224", "description": "Fat Penguins is a collection of 6000 Fat Penguins NFT randomly generated on the Ethereum chain. 6000 Fat Penguins create a community called: Ice lollies. Our penguins are cute, funny, sad, and punk. They are funny and afraid of the cold in the Ethereum.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/fp2.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "12", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] FatPenguins #1333", "description": "Fat Penguins is a collection of 6000 Fat Penguins NFT randomly generated on the Ethereum chain. 6000 Fat Penguins create a community called: Ice lollies. Our penguins are cute, funny, sad, and punk. They are funny and afraid of the cold in the Ethereum.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/fp3.png", "copies": 1}}' --accountId $NFTID --deposit 0.1

near call $NFTID nft_mint '{"token_id": "13", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] Alien #5300", "description": "Intergalactic Alien Tribe is a unique collection of aliens on the Ethereum network, consisting of 8888 unique nft 1/1. Aliens have over 150 different properties and are generated programmatically based on AI. All nft have already been minted before the sale, so just choose the one you like and join our tribe!", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/alien1.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "14", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] Alien #5258", "description": "Intergalactic Alien Tribe is a unique collection of aliens on the Ethereum network, consisting of 8888 unique nft 1/1. Aliens have over 150 different properties and are generated programmatically based on AI. All nft have already been minted before the sale, so just choose the one you like and join our tribe!", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/alien2.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "15", "receiver_id": "'$NFTID'", "token_metadata": { "title": "[Mock] Alien #4976", "description": "Intergalactic Alien Tribe is a unique collection of aliens on the Ethereum network, consisting of 8888 unique nft 1/1. Aliens have over 150 different properties and are generated programmatically based on AI. All nft have already been minted before the sale, so just choose the one you like and join our tribe!", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/alien3.png", "copies": 1}}' --accountId $NFTID --deposit 0.1

# Transfer to alice
near call $NFTID nft_transfer '{"token_id": "1", "receiver_id": "'$ALICEID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "2", "receiver_id": "'$ALICEID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "3", "receiver_id": "'$ALICEID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1

near call $NFTID nft_transfer '{"token_id": "4", "receiver_id": "'$ALICEID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "5", "receiver_id": "'$ALICEID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "6", "receiver_id": "'$ALICEID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1

# Transfer to bob
near call $NFTID nft_transfer '{"token_id": "7", "receiver_id": "'$BOBID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "8", "receiver_id": "'$BOBID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "9", "receiver_id": "'$BOBID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1

# Transfer to Eddy
near call $NFTID nft_transfer '{"token_id": "10", "receiver_id": "'$EDDYID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "11", "receiver_id": "'$EDDYID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "12", "receiver_id": "'$EDDYID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1

near call $NFTID nft_transfer '{"token_id": "13", "receiver_id": "'$EDDYID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "14", "receiver_id": "'$EDDYID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "15", "receiver_id": "'$EDDYID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1

#######################################################
# PART 2
#######################################################

# Mint tokens
near call $NFTID nft_mint '{"token_id": "101", "receiver_id": "'$NFTID'", "token_metadata": { "title": "Karafuru #2321", "description": "Karafuru is home to 5555 generative arts where colors reign supreme. Leave the drab reality and enter the world of Karafuru by Museum of Toys.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/a1.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "102", "receiver_id": "'$NFTID'", "token_metadata": { "title": "Karafuru #4827", "description": "Karafuru is home to 5555 generative arts where colors reign supreme. Leave the drab reality and enter the world of Karafuru by Museum of Toys.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/a2.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "103", "receiver_id": "'$NFTID'", "token_metadata": { "title": "Karafuru #3982", "description": "Karafuru is home to 5555 generative arts where colors reign supreme. Leave the drab reality and enter the world of Karafuru by Museum of Toys.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/a3.png", "copies": 1}}' --accountId $NFTID --deposit 0.1

near call $NFTID nft_mint '{"token_id": "104", "receiver_id": "'$NFTID'", "token_metadata": { "title": "Coolmans Universe #4078", "description": "Spesh is looking for his best friend throughout Coolmans Universe. To travel through this universe Spesh uses a surfboard and a compass.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/s1.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "105", "receiver_id": "'$NFTID'", "token_metadata": { "title": "Coolmans Universe #2639", "description": "Spesh is looking for his best friend throughout Coolmans Universe. To travel through this universe Spesh uses a surfboard and a compass.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/s2.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "106", "receiver_id": "'$NFTID'", "token_metadata": { "title": "Coolmans Universe #8023", "description": "Spesh is looking for his best friend throughout Coolmans Universe. To travel through this universe Spesh uses a surfboard and a compass.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/s3.png", "copies": 1}}' --accountId $NFTID --deposit 0.1

near call $NFTID nft_mint '{"token_id": "107", "receiver_id": "'$NFTID'", "token_metadata": { "title": "CryptoCities #034 - Sydney", "description": "An art collection made up of voxel-based microcosms displaying iconic cities from real life/fiction. Only 333 unique cities to be minted.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/c1.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "108", "receiver_id": "'$NFTID'", "token_metadata": { "title": "CryptoCities #029 - Athens", "description": "An art collection made up of voxel-based microcosms displaying iconic cities from real life/fiction. Only 333 unique cities to be minted.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/c2.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "109", "receiver_id": "'$NFTID'", "token_metadata": { "title": "CryptoCities #056 - Undead City", "description": "An art collection made up of voxel-based microcosms displaying iconic cities from real life/fiction. Only 333 unique cities to be minted.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/c3.png", "copies": 1}}' --accountId $NFTID --deposit 0.1

near call $NFTID nft_mint '{"token_id": "110", "receiver_id": "'$NFTID'", "token_metadata": { "title": "FatPenguins #1089", "description": "Fat Penguins is a collection of 6000 Fat Penguins NFT randomly generated on the Ethereum chain. 6000 Fat Penguins create a community called: Ice lollies. Our penguins are cute, funny, sad, and punk. They are funny and afraid of the cold in the Ethereum.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/fp1.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "111", "receiver_id": "'$NFTID'", "token_metadata": { "title": "FatPenguins #1224", "description": "Fat Penguins is a collection of 6000 Fat Penguins NFT randomly generated on the Ethereum chain. 6000 Fat Penguins create a community called: Ice lollies. Our penguins are cute, funny, sad, and punk. They are funny and afraid of the cold in the Ethereum.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/fp2.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "112", "receiver_id": "'$NFTID'", "token_metadata": { "title": "FatPenguins #1333", "description": "Fat Penguins is a collection of 6000 Fat Penguins NFT randomly generated on the Ethereum chain. 6000 Fat Penguins create a community called: Ice lollies. Our penguins are cute, funny, sad, and punk. They are funny and afraid of the cold in the Ethereum.", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/fp3.png", "copies": 1}}' --accountId $NFTID --deposit 0.1

near call $NFTID nft_mint '{"token_id": "113", "receiver_id": "'$NFTID'", "token_metadata": { "title": "Alien #5300", "description": "Intergalactic Alien Tribe is a unique collection of aliens on the Ethereum network, consisting of 8888 unique nft 1/1. Aliens have over 150 different properties and are generated programmatically based on AI. All nft have already been minted before the sale, so just choose the one you like and join our tribe!", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/alien1.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "114", "receiver_id": "'$NFTID'", "token_metadata": { "title": "Alien #5258", "description": "Intergalactic Alien Tribe is a unique collection of aliens on the Ethereum network, consisting of 8888 unique nft 1/1. Aliens have over 150 different properties and are generated programmatically based on AI. All nft have already been minted before the sale, so just choose the one you like and join our tribe!", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/alien2.png", "copies": 1}}' --accountId $NFTID --deposit 0.1
near call $NFTID nft_mint '{"token_id": "115", "receiver_id": "'$NFTID'", "token_metadata": { "title": "Alien #4976", "description": "Intergalactic Alien Tribe is a unique collection of aliens on the Ethereum network, consisting of 8888 unique nft 1/1. Aliens have over 150 different properties and are generated programmatically based on AI. All nft have already been minted before the sale, so just choose the one you like and join our tribe!", "media": "https://raw.githubusercontent.com/swapstation/public/main/nft-sample/images/alien3.png", "copies": 1}}' --accountId $NFTID --deposit 0.1

# Transfer to alice
near call $NFTID nft_transfer '{"token_id": "101", "receiver_id": "'$ALICEID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "102", "receiver_id": "'$ALICEID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "103", "receiver_id": "'$ALICEID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1

near call $NFTID nft_transfer '{"token_id": "104", "receiver_id": "'$ALICEID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "105", "receiver_id": "'$ALICEID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "106", "receiver_id": "'$ALICEID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1

# Transfer to bob
near call $NFTID nft_transfer '{"token_id": "107", "receiver_id": "'$BOBID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "108", "receiver_id": "'$BOBID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "109", "receiver_id": "'$BOBID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1

near call $NFTID nft_transfer '{"token_id": "110", "receiver_id": "'$BOBID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "111", "receiver_id": "'$BOBID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "112", "receiver_id": "'$BOBID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1

near call $NFTID nft_transfer '{"token_id": "113", "receiver_id": "'$BOBID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "114", "receiver_id": "'$BOBID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
near call $NFTID nft_transfer '{"token_id": "115", "receiver_id": "'$BOBID'", "memo": "Initial transfer"}' --accountId $NFTID --depositYocto 1
