// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: Imajinarium
/// @author: manifold.xyz

import "./ERC721Creator.sol";

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                //
//                                                                                                //
//                                                                                                //
//      _____  __  __                _  _____  _   _            _____   _____  _    _  __  __     //
//     |_   _||  \/  |    /\        | ||_   _|| \ | |    /\    |  __ \ |_   _|| |  | ||  \/  |    //
//       | |  | \  / |   /  \       | |  | |  |  \| |   /  \   | |__) |  | |  | |  | || \  / |    //
//       | |  | |\/| |  / /\ \  _   | |  | |  | . ` |  / /\ \  |  _  /   | |  | |  | || |\/| |    //
//      _| |_ | |  | | / ____ \| |__| | _| |_ | |\  | / ____ \ | | \ \  _| |_ | |__| || |  | |    //
//     |_____||_|  |_|/_/    \_\\____/ |_____||_| \_|/_/    \_\|_|  \_\|_____| \____/ |_|  |_|    //
//                                                                                                //
//                                                                                                //
//                                                                                                //
//                                                                                                //
//                                                                                                //
////////////////////////////////////////////////////////////////////////////////////////////////////


contract MAJIN is ERC721Creator {
    constructor() ERC721Creator("Imajinarium", "MAJIN") {}
}