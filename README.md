# Franchiser

`Franchiser` allows holders of checkpoint voting tokens to selectively sub-delegate voting power while retaining full custody over their funds, as described in the [design document](./spec.md).

## Running Locally

- Ensure that [foundry](https://book.getfoundry.sh/) is installed on your machine
- `forge build`
- `forge test --no-match-contract Integration`
- `forge test --match-contract Integration --fork-url $FORK_URL`

## Deploying

- Create and populate a .env file
- `source .env`
- `forge script script/Deploy.s.sol:Deploy --broadcast --private-key $PRIVATE_KEY --rpc-url $RPC_URL [--etherscan-api-key $ETHERSCAN_API_KEY --verify --chain-id $CHAIN_ID]`

## Deployed Instance (FORKED)

See the [v1 release](https://github.com/miggebril/franchiser/releases/tag/ArbV1).

## Audit (ORIGINAL AUDIT OF [NoahZinsmeister](https://github.com/NoahZinsmeister/franchiser/compare/e652c7fe1716bc8e9ca1bb929238313eabb9ea52...main))

This codebase was audited by [Trail of Bits](https://www.trailofbits.com/) as of commit [e652c7fe1716bc8e9ca1bb929238313eabb9ea52](https://github.com/NoahZinsmeister/franchiser/commit/e652c7fe1716bc8e9ca1bb929238313eabb9ea52). All changes made since this commit may be viewed [here](https://github.com/NoahZinsmeister/franchiser/compare/e652c7fe1716bc8e9ca1bb929238313eabb9ea52...main). The audit findings are summarized in issues which may be viewed [here](https://github.com/NoahZinsmeister/franchiser/issues?q=is%3Aissue+%28TOB). 
