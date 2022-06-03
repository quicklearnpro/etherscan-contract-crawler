// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: Cryptofers
/// @author: manifold.xyz

import "./ERC721Creator.sol";

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                                                  //
//                                                                                                                                                                                  //
//                                                                                                                                                                                  //
//      __  __ ______ ______ _____   _____        _ _    _  _____ _______    _____ ______ _______ _______ _____ _   _  _____    _____ _______       _____ _______ ______ _____      //
//     |  \/  |  ____|  ____|  __ \ / ____|      | | |  | |/ ____|__   __|  / ____|  ____|__   __|__   __|_   _| \ | |/ ____|  / ____|__   __|/\   |  __ \__   __|  ____|  __ \     //
//     | \  / | |__  | |__  | |__) | (___        | | |  | | (___    | |    | |  __| |__     | |     | |    | | |  \| | |  __  | (___    | |  /  \  | |__) | | |  | |__  | |  | |    //
//     | |\/| |  __| |  __| |  _  / \___ \   _   | | |  | |\___ \   | |    | | |_ |  __|    | |     | |    | | | . ` | | |_ |  \___ \   | | / /\ \ |  _  /  | |  |  __| | |  | |    //
//     | |  | | |    | |____| | \ \ ____) | | |__| | |__| |____) |  | |    | |__| | |____   | |     | |   _| |_| |\  | |__| |  ____) |  | |/ ____ \| | \ \  | |  | |____| |__| |    //
//     |_|  |_|_|    |______|_|  \_\_____/   \____/ \____/|_____/   |_|     \_____|______|  |_|     |_|  |_____|_| \_|\_____| |_____/   |_/_/    \_\_|  \_\ |_|  |______|_____/     //
//                                                                                                                                                                                  //
//                                                                                                                                                                                  //
//                                                                                                                                                                                  //
//                                                                                                                                                                                  //
//                                                                                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


contract CRF is ERC721Creator {
    constructor() ERC721Creator("Cryptofers", "CRF") {}
}