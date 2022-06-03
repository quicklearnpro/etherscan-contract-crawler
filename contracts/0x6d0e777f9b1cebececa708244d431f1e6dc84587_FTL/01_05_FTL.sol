// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: FREE THE LIPS
/// @author: manifold.xyz

import "./ERC721Creator.sol";

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                      //
//                                                                                                                                      //
//      _________   _____  _________________________.___.  _____      _____  ________  _________________________ ___ .___  _________    //
//     /   _____/  /  _  \ \____    /\____    /\__  |   | /     \    /  _  \ \______ \ \_   _____/\__    ___/   |   \|   |/   _____/    //
//     \_____  \  /  /_\  \  /     /   /     /  /   |   |/  \ /  \  /  /_\  \ |    |  \ |    __)_   |    | /    ~    \   |\_____  \     //
//     /        \/    |    \/     /_  /     /_  \____   /    Y    \/    |    \|    `   \|        \  |    | \    Y    /   |/        \    //
//    /_______  /\____|__  /_______ \/_______ \ / ______\____|__  /\____|__  /_______  /_______  /  |____|  \___|_  /|___/_______  /    //
//            \/         \/        \/        \/ \/              \/         \/        \/        \/                 \/             \/     //
//                                                                                                                                      //
//                                                                                                                                      //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


contract FTL is ERC721Creator {
    constructor() ERC721Creator("FREE THE LIPS", "FTL") {}
}