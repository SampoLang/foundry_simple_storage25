// SPDX-Licence-identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    //run gets called when we run the script
    function run() external returns (SimpleStorage) {
        //startBroadcast is used to start the transaction
        //vm is a global variable that is used to access the forge-std library
        //everything after startbroadcast is sent to the RPC
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
