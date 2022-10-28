import { logging, ContractPromise, u128 } from "near-sdk-as";

export class NFTContractApi {
  
  /**
   * near call nft.$ID nft_transfer '{"token_id": "0", "receiver_id": "alice.'$ID'", "memo": "transfer ownership"}' --accountId nft.$ID --depositYocto 1
   * @param owner 
   * @returns 
   */
   transfer(token_contract: string, token_id: string, receiver_id: string): ContractPromise {
    const yoctoNEAR: u128 = u128.One;
    // const gas: number = 300000000000000; // 300 TGas

    let args: TransferArgs = { token_id: token_id, receiver_id: receiver_id, memo: "transfer ownership" };
    let promise = ContractPromise.create<TransferArgs>(token_contract, "nft_transfer", args, 300000000000000, yoctoNEAR);  // Need to attach exactly 1 yoctoNEAR (https://docs.near.org/docs/tutorials/contracts/nfts/approvals)
    logging.log("Call NFT_CONTRACT (" + token_contract + "): nft_transfer");
    return promise;
  }

  /**
   * near view nft nft_is_approved '{ "token_id": "1", "approved_account_id": "bob" }'
   */
   is_approved(token_contract: string, token_id: string, approved_account_id: string): ContractPromise {
    let args: any = { token_id: token_id, approved_account_id: approved_account_id };
    let promise = ContractPromise.create<Boolean>(token_contract, "nft_is_approved", args.encode(), 3000000000000);
    logging.log("Call NFT_CONTRACT (" + token_contract + "): nft_is_approved");
    return promise;
  }

  /**
   * near view $NFTID nft_token '{"token_id": "1"}'
   */
   nft_token(token_contract: string, token_id: string): ContractPromise {
    let args: any = { token_id: token_id };
    let promise = ContractPromise.create<Boolean>(token_contract, "token_contract", args.encode(), 3000000000000);
    logging.log("Call NFT_CONTRACT (" + token_contract + "): token_contract");
    return promise;
  }
}

@nearBindgen
export class TransferArgs {
  token_id: string;
  receiver_id: string;
  memo: string;
}

@nearBindgen
export class TokensForOwnerArgs {
  account_id: string;
}
