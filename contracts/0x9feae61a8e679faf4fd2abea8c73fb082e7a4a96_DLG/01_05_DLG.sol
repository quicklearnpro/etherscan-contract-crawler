// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: DLGLive.ETH
/// @author: manifold.xyz

import "./ERC721Creator.sol";

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                                                                       //
//                                                                                                                                                                                                       //
//    __/\\\\\\\\\\\\_____/\\\_________________/\\\\\\\\\\\\__/\\\______________/\\\\\\\\\\\__/\\\________/\\\__/\\\\\\\\\\\\\\\________/\\\\\\\\\\\\\\\__/\\\\\\\\\\\\\\\__/\\\________/\\\_            //
//     _\/\\\////////\\\__\/\\\_______________/\\\//////////__\/\\\_____________\/////\\\///__\/\\\_______\/\\\_\/\\\///////////________\/\\\///////////__\///////\\\/////__\/\\\_______\/\\\_           //
//      _\/\\\______\//\\\_\/\\\______________/\\\_____________\/\\\_________________\/\\\_____\//\\\______/\\\__\/\\\___________________\/\\\___________________\/\\\_______\/\\\_______\/\\\_          //
//       _\/\\\_______\/\\\_\/\\\_____________\/\\\____/\\\\\\\_\/\\\_________________\/\\\______\//\\\____/\\\___\/\\\\\\\\\\\___________\/\\\\\\\\\\\___________\/\\\_______\/\\\\\\\\\\\\\\\_         //
//        _\/\\\_______\/\\\_\/\\\_____________\/\\\___\/////\\\_\/\\\_________________\/\\\_______\//\\\__/\\\____\/\\\///////____________\/\\\///////____________\/\\\_______\/\\\/////////\\\_        //
//         _\/\\\_______\/\\\_\/\\\_____________\/\\\_______\/\\\_\/\\\_________________\/\\\________\//\\\/\\\_____\/\\\___________________\/\\\___________________\/\\\_______\/\\\_______\/\\\_       //
//          _\/\\\_______/\\\__\/\\\_____________\/\\\_______\/\\\_\/\\\_________________\/\\\_________\//\\\\\______\/\\\___________________\/\\\___________________\/\\\_______\/\\\_______\/\\\_      //
//           _\/\\\\\\\\\\\\/___\/\\\\\\\\\\\\\\\_\//\\\\\\\\\\\\/__\/\\\\\\\\\\\\\\\__/\\\\\\\\\\\______\//\\\_______\/\\\\\\\\\\\\\\\__/\\\_\/\\\\\\\\\\\\\\\_______\/\\\_______\/\\\_______\/\\\_     //
//            _\////////////_____\///////////////___\////////////____\///////////////__\///////////________\///________\///////////////__\///__\///////////////________\///________\///________\///_     //
//                                                                                                                                                                                                       //
//                                                                                                                                                                                                       //
//                                                                                                                                                                                                       //
//                                                                                                                                                                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


contract DLG is ERC721Creator {
    constructor() ERC721Creator("DLGLive.ETH", "DLG") {}
}