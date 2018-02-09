pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/TokenGeneration.sol";

contract TestTokenGeneration {
  TokenGeneration tokenGeneration = TokenGeneration(DeployedAddresses.TokenGeneration());
//   RECS recs = TokenGeneration(DeployedAddresses.RECS()); 
    // Testing the adopt() function
function testUserCanReceiveTokens() public {
  uint returnedSum = tokenGeneration.releaseTokens(0xf17f52151EbEF6C7334FAD080c5704D77216b732, 8);

  uint expected = 8;

  Assert.equal(returnedSum, expected, "Balance of account should be 8");
}
}