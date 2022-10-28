import { PersistentVector, storage } from "near-sdk-as";
import { SwapAgreement } from "./models";

export const swapAgreementStore = new PersistentVector<SwapAgreement>("swap_agreement");

export const get_contract_owner = (): string => {
  return storage.getPrimitive<string>("contract_owner", "");
}

export const set_contract_owner = (contract_owner: string): void => {
  storage.set("contract_owner", contract_owner);
}

export const generate_new_id = (): i32 => {
  const newId = storage.getPrimitive<i32>("current_id", 0) + 1;
  storage.set("current_id", newId);
  return newId;
}
