// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.15;

import {Script} from "forge-std/Script.sol";
import {IVotingToken} from "../src/interfaces/IVotingToken.sol";
import {IVotingToken} from "../src/FranchiserFactory.sol";
import {FranchiserFactory} from "../src/FranchiserFactory.sol";
import {FranchiserLens} from "../src/FranchiserLens.sol";

contract Deploy is Script {
    IVotingToken private constant ARB =
        IVotingToken(0x912CE59144191C1204E64559FE8253a0e49E6548);

    function run() public {
        vm.startBroadcast();
        FranchiserFactory franchiserFactory = new FranchiserFactory(ARB);
        new FranchiserLens(ARB, franchiserFactory);
        vm.stopBroadcast();
    }
}
