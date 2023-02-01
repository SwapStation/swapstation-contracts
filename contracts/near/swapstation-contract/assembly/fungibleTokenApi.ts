import { logging, u128, ContractPromiseBatch } from "near-sdk-as";

export class FungibleTokenAPI {
  sendNEAR(amount: u128, to: string): void {
    logging.log("Sending " + amount.toString() + " NEAR to address " + to);
    ContractPromiseBatch.create(to).transfer(amount);
  }
}
