// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: Jay Anthony Olson Editions
/// @author: manifold.xyz

import "./ERC1155Creator.sol";

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                                                         //
//                                                                                                                                                                                         //
//         ▄█    ▄████████ ▄██   ▄          ▄████████ ███▄▄▄▄       ███        ▄█    █▄     ▄██████▄  ███▄▄▄▄   ▄██   ▄        ▄██████▄   ▄█          ▄████████  ▄██████▄  ███▄▄▄▄         //
//        ███   ███    ███ ███   ██▄       ███    ███ ███▀▀▀██▄ ▀█████████▄   ███    ███   ███    ███ ███▀▀▀██▄ ███   ██▄     ███    ███ ███         ███    ███ ███    ███ ███▀▀▀██▄       //
//        ███   ███    ███ ███▄▄▄███       ███    ███ ███   ███    ▀███▀▀██   ███    ███   ███    ███ ███   ███ ███▄▄▄███     ███    ███ ███         ███    █▀  ███    ███ ███   ███       //
//        ███   ███    ███ ▀▀▀▀▀▀███       ███    ███ ███   ███     ███   ▀  ▄███▄▄▄▄███▄▄ ███    ███ ███   ███ ▀▀▀▀▀▀███     ███    ███ ███         ███        ███    ███ ███   ███       //
//        ███ ▀███████████ ▄██   ███     ▀███████████ ███   ███     ███     ▀▀███▀▀▀▀███▀  ███    ███ ███   ███ ▄██   ███     ███    ███ ███       ▀███████████ ███    ███ ███   ███       //
//        ███   ███    ███ ███   ███       ███    ███ ███   ███     ███       ███    ███   ███    ███ ███   ███ ███   ███     ███    ███ ███                ███ ███    ███ ███   ███       //
//    █▄  ███   ███    ███ ███   ███       ███    ███ ███   ███     ███       ███    ███   ███    ███ ███   ███ ███   ███     ███    ███ ███▌    ▄    ▄█    ███ ███    ███ ███   ███       //
//    ██▄▄███   ███    █▀   ▀█████▀        ███    █▀   ▀█   █▀     ▄████▀     ███    █▀     ▀██████▀   ▀█   █▀   ▀█████▀       ▀██████▀  █████▄▄██  ▄████████▀   ▀██████▀   ▀█   █▀        //
//    ▀▀▀▀▀▀                                                                                                                                                                               //
//                                               ▄████████ ████████▄   ▄█      ███      ▄█   ▄██████▄  ███▄▄▄▄      ▄████████                                                              //
//                                              ███    ███ ███   ▀███ ███  ▀█████████▄ ███  ███    ███ ███▀▀▀██▄   ███    ███                                                              //
//                                              ███    █▀  ███    ███ ███▌    ▀███▀▀██ ███▌ ███    ███ ███   ███   ███    █▀                                                               //
//                                             ▄███▄▄▄     ███    ███ ███▌     ███   ▀ ███▌ ███    ███ ███   ███   ███                                                                     //
//                                            ▀▀███▀▀▀     ███    ███ ███▌     ███     ███▌ ███    ███ ███   ███ ▀███████████                                                              //
//                                              ███    █▄  ███    ███ ███      ███     ███  ███    ███ ███   ███          ███                                                              //
//                                              ███    ███ ███   ▄███ ███      ███     ███  ███    ███ ███   ███    ▄█    ███                                                              //
//                                              ██████████ ████████▀  █▀      ▄████▀   █▀    ▀██████▀   ▀█   █▀   ▄████████▀                                                               //
//                                                                                                                                                                                         //
//                                                                                                                                                                                         //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


contract JAOE is ERC1155Creator {
    constructor() ERC1155Creator() {}
}