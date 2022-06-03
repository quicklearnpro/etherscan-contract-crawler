// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: Cullen Colors x GCG
/// @author: manifold.xyz

import "./ERC721Creator.sol";

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                           //
//                                                                                                                           //
//                                                                                                                           //
//        ▄████▄   █    ██  ██▓     ██▓    ▓█████  ███▄    █     ▄████▄   ▒█████   ██▓     ▒█████   ██▀███    ██████         //
//       ▒██▀ ▀█   ██  ▓██▒▓██▒    ▓██▒    ▓█   ▀  ██ ▀█   █    ▒██▀ ▀█  ▒██▒  ██▒▓██▒    ▒██▒  ██▒▓██ ▒ ██▒▒██    ▒         //
//       ▒▓█    ▄ ▓██  ▒██░▒██░    ▒██░    ▒███   ▓██  ▀█ ██▒   ▒▓█    ▄ ▒██░  ██▒▒██░    ▒██░  ██▒▓██ ░▄█ ▒░ ▓██▄           //
//       ▒▓▓▄ ▄██▒▓▓█  ░██░▒██░    ▒██░    ▒▓█  ▄ ▓██▒  ▐▌██▒   ▒▓▓▄ ▄██▒▒██   ██░▒██░    ▒██   ██░▒██▀▀█▄    ▒   ██▒        //
//       ▒ ▓███▀ ░▒▒█████▓ ░██████▒░██████▒░▒████▒▒██░   ▓██░   ▒ ▓███▀ ░░ ████▓▒░░██████▒░ ████▓▒░░██▓ ▒██▒▒██████▒▒        //
//       ░ ░▒ ▒  ░░▒▓▒ ▒ ▒ ░ ▒░▓  ░░ ▒░▓  ░░░ ▒░ ░░ ▒░   ▒ ▒    ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░▓  ░░ ▒░▒░▒░ ░ ▒▓ ░▒▓░▒ ▒▓▒ ▒ ░        //
//         ░  ▒   ░░▒░ ░ ░ ░ ░ ▒  ░░ ░ ▒  ░ ░ ░  ░░ ░░   ░ ▒░     ░  ▒     ░ ▒ ▒░ ░ ░ ▒  ░  ░ ▒ ▒░   ░▒ ░ ▒░░ ░▒  ░ ░        //
//       ░         ░░░ ░ ░   ░ ░     ░ ░      ░      ░   ░ ░    ░        ░ ░ ░ ▒    ░ ░   ░ ░ ░ ▒    ░░   ░ ░  ░  ░          //
//       ░ ░         ░         ░  ░    ░  ░   ░  ░         ░    ░ ░          ░ ░      ░  ░    ░ ░     ░           ░          //
//       ░                                                      ░                                                            //
//      ▄████  █    ██ ▄▄▄█████▓▄▄▄█████▓▓█████  ██▀███   ▄████▄   ▄▄▄     ▄▄▄█████▓  ▄████  ▄▄▄       ███▄    █   ▄████     //
//     ██▒ ▀█▒ ██  ▓██▒▓  ██▒ ▓▒▓  ██▒ ▓▒▓█   ▀ ▓██ ▒ ██▒▒██▀ ▀█  ▒████▄   ▓  ██▒ ▓▒ ██▒ ▀█▒▒████▄     ██ ▀█   █  ██▒ ▀█▒    //
//    ▒██░▄▄▄░▓██  ▒██░▒ ▓██░ ▒░▒ ▓██░ ▒░▒███   ▓██ ░▄█ ▒▒▓█    ▄ ▒██  ▀█▄ ▒ ▓██░ ▒░▒██░▄▄▄░▒██  ▀█▄  ▓██  ▀█ ██▒▒██░▄▄▄░    //
//    ░▓█  ██▓▓▓█  ░██░░ ▓██▓ ░ ░ ▓██▓ ░ ▒▓█  ▄ ▒██▀▀█▄  ▒▓▓▄ ▄██▒░██▄▄▄▄██░ ▓██▓ ░ ░▓█  ██▓░██▄▄▄▄██ ▓██▒  ▐▌██▒░▓█  ██▓    //
//    ░▒▓███▀▒▒▒█████▓   ▒██▒ ░   ▒██▒ ░ ░▒████▒░██▓ ▒██▒▒ ▓███▀ ░ ▓█   ▓██▒ ▒██▒ ░ ░▒▓███▀▒ ▓█   ▓██▒▒██░   ▓██░░▒▓███▀▒    //
//     ░▒   ▒ ░▒▓▒ ▒ ▒   ▒ ░░     ▒ ░░   ░░ ▒░ ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░ ▒▒   ▓▒█░ ▒ ░░    ░▒   ▒  ▒▒   ▓▒█░░ ▒░   ▒ ▒  ░▒   ▒     //
//      ░   ░ ░░▒░ ░ ░     ░        ░     ░ ░  ░  ░▒ ░ ▒░  ░  ▒     ▒   ▒▒ ░   ░      ░   ░   ▒   ▒▒ ░░ ░░   ░ ▒░  ░   ░     //
//    ░ ░   ░  ░░░ ░ ░   ░        ░         ░     ░░   ░ ░          ░   ▒    ░      ░ ░   ░   ░   ▒      ░   ░ ░ ░ ░   ░     //
//          ░    ░                          ░  ░   ░     ░ ░            ░  ░              ░       ░  ░         ░       ░     //
//                                                       ░                                                                   //
//                                                                                                                           //
//                                                                                                                           //
//                                                                                                                           //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


contract CCGCG is ERC721Creator {
    constructor() ERC721Creator("Cullen Colors x GCG", "CCGCG") {}
}