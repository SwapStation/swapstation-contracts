import { PersistentVector, storage } from "near-sdk-as";
import { SwapAgreement } from "./models";

export const swapAgreementStore = new PersistentVector<SwapAgreement>("swap_agreement");

export const get_contract_owner = (): string => {
  return storage.getPrimitive<string>("contract_owner", "");
}
export const set_contract_owner = (contract_owner: string): void => {
  storage.set("contract_owner", contract_owner);
}

export const get_transfer_gas = (): u64 => {
  return storage.getPrimitive<u64>("transfer_gas", 0);
}
export const set_transfer_gas = (transfer_gas: u64): void => {
  storage.set("transfer_gas", transfer_gas);
}

export const get_fee = (): u64 => {
  return storage.getPrimitive<u64>("fee", 0);
}
export const set_fee = (fee: u64): void => {
  storage.set("fee", fee);
}

export const get_swap_expiry = (): u64 => {
  return storage.getPrimitive<u64>("swap_expiry", 0);
}
export const set_swap_expiry = (swap_expiry: u64): void => {
  storage.set("swap_expiry", swap_expiry);
}

export const generate_new_id = (): i32 => {
  const newId = storage.getPrimitive<i32>("current_id", 0) + 1;
  storage.set("current_id", newId);
  return newId;
}
