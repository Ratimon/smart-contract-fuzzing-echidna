echidna-Token:
	echidna src/echidna/FuzzToken.sol --contract EchidnaFuzzToken  --config src/echidna/Token.yml

echidna-TokenWhale:
	echidna src/echidna/FuzzTokenWhale.sol --contract EchidnaFuzzTokenWhale  --config src/echidna/TokenWhale.yml

echidna-TokenSale:
	echidna src/echidna/FuzzTokenSale.sol --contract EchidnaFuzzTokenSale --config src/echidna/TokenSale.yml

foundry-invariant-TokenSale:
	forge test --match-path test/TokenSale.invariants.t.sol -vvv