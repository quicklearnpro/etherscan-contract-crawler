// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: Collections
/// @author: manifold.xyz

import "./ERC721Creator.sol";

///////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                       //
//                                                                                                       //
//    _____/\\\\\\\\\\\_________________________________________________/\\\_________________            //
//     ___/\\\/////////\\\___/\\\_______________________________________\/\\\_________________           //
//      __\//\\\______\///___\/\\\__________________________/\\\_________\/\\\_________________          //
//       ___\////\\\__________\/\\\\\\\\______/\\\____/\\\__\///__________\/\\\____/\\\\\\\\\\\_         //
//        ______\////\\\_______\/\\\////\\\___\/\\\___\/\\\___/\\\____/\\\\\\\\\___\///////\\\/__        //
//         _________\////\\\____\/\\\\\\\\/____\/\\\___\/\\\__\/\\\___/\\\////\\\________/\\\/____       //
//          __/\\\______\//\\\___\/\\\///\\\____\/\\\___\/\\\__\/\\\__\/\\\__\/\\\______/\\\/______      //
//           _\///\\\\\\\\\\\/____\/\\\_\///\\\__\//\\\\\\\\\___\/\\\__\//\\\\\\\/\\___/\\\\\\\\\\\_     //
//            ___\///////////______\///____\///____\/////////____\///____\///////\//___\///////////__    //
//                                                                                                       //
//                                                                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////


contract SKDZC is ERC721Creator {
    constructor() ERC721Creator("Collections", "SKDZC") {}
}