import { context, ContractPromise, logging, u128 } from "near-sdk-as";
import { JSON } from "assemblyscript-json"; 
import { SwapAgreement } from "./models";
import { NFTContractApi } from "./nftContractApi";
import { get_contract_owner, get_transfer_gas, set_contract_owner, set_fee, set_swap_expiry, set_transfer_gas, swapAgreementStore } from "./storage";

// INIT

export function init(owner_id: string): void {
    const contract_owner = get_contract_owner();
    if (contract_owner == "") {
        logging.log("[init] Failed: Contract already initialized.");
        return;
    }
    set_contract_owner(owner_id);
}


// OWNER ONLY METHODS

export function owner_set_config_transfer_gas(gas: u64): void {
    set_transfer_gas(gas);
}

export function owner_set_config_fee(fee: u64): void {
    assert(context.sender === get_contract_owner(), "This method can only be invoked by contract owner.");
    set_fee(fee);
}

export function owner_set_config_swap_expiry(expiry_time: u64): void {
    set_swap_expiry(expiry_time);
}

export function owner_delete_swap_agreement(request_code: string, offer_code: string): void {
    remove_swap_agreement(request_code, offer_code);
}

export function owner_close_expired_swaps(): void {

}

// WRITE METHODS

export function accept_swap_as_maker(
    request_code: string, 
    offer_code: string, 
    taker_address: string, 
    request_nft_contract: string, 
    request_token_id: string,
    offer_nft_contract: string, 
    offer_token_id: string
    ): void {

    // Verify token ownership
    const maker_address = context.sender;
    // assert(nft_is_token_owner(request_nft_contract, request_token_id, maker_address), "Maker does not own request token.");

    // // Verify approval
    // assert(nft_is_approved(request_nft_contract, request_token_id, get_contract_owner()), "Contract owner is not approved to manage request token.");

    // Create the record
    const swap_agreement: SwapAgreement = {
        request_code: request_code,
        offer_code: offer_code,
        maker: maker_address,
        taker: taker_address,
        request_nft_contract: request_nft_contract,
        request_token_id: request_token_id,
        offer_nft_contract: offer_nft_contract,
        offer_token_id: offer_token_id
    };
    swapAgreementStore.push(swap_agreement);

    logging.log("[accept_swap_as_maker] Successful: request_code: " + request_code + ", offer_code: " + offer_code);
}

export function accept_swap_as_taker(
    request_code: string, 
    offer_code: string, 
    maker_address: string, 
    request_nft_contract: string, 
    request_token_id: string,
    offer_nft_contract: string, 
    offer_token_id: string): void {

    // Check fee
    // const receivedAmount = context.attachedDeposit;

    // // Verify swap agreement
    const swapAgreement = get_swap_agreement(request_code, offer_code);
    if (!swapAgreement) {
        logging.log("[accept_swap_as_taker] Failed: Swap agreement not found.");
        return;
    }

    // if (context.sender != swapAgreement.taker) {
    //     logging.log("[accept_swap_as_maker] Failed: maker does not own request token.");
    //     return;
    // }

    // // Verify taker token ownership
    // if (!is_token_owner(swapAgreement.request_nft_contract, swapAgreement.request_token_id, swapAgreement.taker_address)) {
    //     logging.log("[accept_swap_as_maker] Failed: maker does not own request token.");
    //     return;
    // }

    // // Verify maker token ownership
    // if (!is_token_owner(swapAgreement.request_nft_contract, swapAgreement.request_token_id, swapAgreement.maker_address)) {
    //     logging.log("[accept_swap_as_maker] Failed: maker does not own request token.");
    //     return;
    // }

    // Transfer from maker to taker
    nft_transfer(swapAgreement.request_nft_contract, swapAgreement.request_token_id, swapAgreement.taker);

    // Transfer from taker to maker
    nft_transfer(swapAgreement.offer_nft_contract, swapAgreement.offer_token_id, swapAgreement.maker);

    // TODO: this has to be handled on transfer callback
    // Delete agreement
    // remove_swap_agreement(request_code, offer_code);

    logging.log("[accept_swap_as_maker] Successful: request_code: " + request_code + ", offer_code: " + offer_code);
}

// VIEW METHODS

export function get_owner(): string {
    return get_contract_owner();
}

export function get_transfer_gas_amount(): u64 {
    return get_transfer_gas();
}

export function get_all_swap_agreements(): SwapAgreement[] {
    const result = new Array<SwapAgreement>(swapAgreementStore.length);
    for(let i = 0; i < swapAgreementStore.length; i++) {
        result[i] = swapAgreementStore[i];
    }
    return result;
}

export function get_swap_agreement(request_code: string, offer_code: string): SwapAgreement | null {

    for(let i = 0; i < swapAgreementStore.length; i++) {
        if (swapAgreementStore[i].request_code == request_code && swapAgreementStore[i].offer_code == offer_code) {
            return swapAgreementStore[i];
        }
    }

    return null;
}

// EVENT HANDLERS
// Respond to notification that contract has been granted approval for a token.
//
// Notes
// * Contract knows the token contract ID from `predecessor_account_id`
//
// Arguments:
// * `token_id`: the token to which this contract has been granted approval
// * `owner_id`: the owner of the token
// * `approval_id`: the approval ID stored by NFT contract for this approval.
//   Expected to be a number within the 2^53 limit representable by JSON.
// * `msg`: specifies information needed by the approved contract in order to
//    handle the approval. Can indicate both a function to call and the
//    parameters to pass to that function.
export function nft_on_approve(
    token_id: string,
    owner_id: string,
    approval_id: u64,
    msg: string,
  ): void {

    logging.log("[nft_on_approve] Begin");
    logging.log("[nft_on_approve] sender: " + context.sender);
    logging.log("[nft_on_approve] predecessor: " + context.predecessor);
    logging.log("[nft_on_approve] msg: " + msg);

    let jsonObj: JSON.Obj = <JSON.Obj>(JSON.parse(msg));
    let request_code_json: JSON.Str | null = jsonObj.getString("request_code");
    if (request_code_json != null) {
        let request_code: string = request_code_json.valueOf();
        logging.log("[nft_on_approve] request_code: " + request_code);
    }
}

// HELPERS

function remove_swap_agreement(request_code: string, offer_code: string): void {

    let removeIndex = -1;

    for(let i = 0; i < swapAgreementStore.length; i++) {
        if (swapAgreementStore[i].request_code == request_code && swapAgreementStore[i].offer_code == offer_code) {
            removeIndex = i;
            break;
        }
    }

    if (removeIndex >= 0) {
        swapAgreementStore.swap_remove(removeIndex);
    }
}

// export function nft_is_token_owner(token_contract: string, token_id: string, account_id: string): bool {
//     logging.log("[nft_is_token_owner] Begin");
//     const result = false;
//     let api = new NFTContractApi();
//     const promise = api.nft_token(token_contract, token_id)
//     const response = promise.returnAsResult() as any;
//     return response.owner_id === account_id;
// }

// export function nft_is_approved(token_contract: string, token_id: string, approved_account_id: string): bool {
//     logging.log("[nft_is_approved] Begin");
//     let api = new NFTContractApi();
//     let promise = api.is_approved(token_contract, token_id, approved_account_id);
//     const response = promise.returnAsResult() as any;
//     return true;
// }

export function nft_transfer(nft_contract: string, token_id: string, to_account_id: string): void {
    logging.log("[nft_transfer] Begin. nft_contract: " + nft_contract + ", token_id: " + token_id + ", to_account_id: " + to_account_id);
    let api = new NFTContractApi();
    let promise = api.transfer(nft_contract, token_id, to_account_id, get_transfer_gas());
    promise.returnAsResult();
}
