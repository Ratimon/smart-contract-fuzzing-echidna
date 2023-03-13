echidna-TokenWhale:
	echidna src/echidna/FuzzTokenWhale.sol --contract EchidnaFuzzTokenWhale --test-limit 100000 --corpus-dir=./corpus

echidna-TokenSale:
	echidna src/echidna/FuzzTokenSale.sol --contract EchidnaFuzzTokenSale --config src/echidna/TokenSale.yml