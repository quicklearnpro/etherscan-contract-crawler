// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: Otto Kind
/// @author: manifold.xyz

import "./ERC721Creator.sol";

/////////////////////////////////////////////////////////////////
//                                                             //
//                                                             //
//    ███████╗██████╗ ██╗███████╗███╗   ██╗██████╗ ███████╗    //
//    ██╔════╝██╔══██╗██║██╔════╝████╗  ██║██╔══██╗██╔════╝    //
//    █████╗  ██████╔╝██║█████╗  ██╔██╗ ██║██║  ██║███████╗    //
//    ██╔══╝  ██╔══██╗██║██╔══╝  ██║╚██╗██║██║  ██║╚════██║    //
//    ██║     ██║  ██║██║███████╗██║ ╚████║██████╔╝███████║    //
//    ╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═══╝╚═════╝ ╚══════╝    //
//                                                             //
//     ██████╗ ███████╗                                        //
//    ██╔═══██╗██╔════╝                                        //
//    ██║   ██║█████╗                                          //
//    ██║   ██║██╔══╝                                          //
//    ╚██████╔╝██║                                             //
//     ╚═════╝ ╚═╝                                             //
//                                                             //
//     █████╗ ██╗   ██╗ █████╗ ██╗      ██████╗ ███╗   ██╗     //
//    ██╔══██╗██║   ██║██╔══██╗██║     ██╔═══██╗████╗  ██║     //
//    ███████║██║   ██║███████║██║     ██║   ██║██╔██╗ ██║     //
//    ██╔══██║╚██╗ ██╔╝██╔══██║██║     ██║   ██║██║╚██╗██║     //
//    ██║  ██║ ╚████╔╝ ██║  ██║███████╗╚██████╔╝██║ ╚████║     //
//    ╚═╝  ╚═╝  ╚═══╝  ╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝     //
//                                                             //
//                                                             //
//                                                             //
/////////////////////////////////////////////////////////////////


contract AVALON is ERC721Creator {
    constructor() ERC721Creator("Otto Kind", "AVALON") {}
}