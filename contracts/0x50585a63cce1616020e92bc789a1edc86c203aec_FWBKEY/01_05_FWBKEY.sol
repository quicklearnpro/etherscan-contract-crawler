// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: FWB KEY
/// @author: manifold.xyz

import "./ERC721Creator.sol";

/////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                             //
//                                                                                             //
//             _          _             _                 _              _    _        _       //
//            /\ \       / /\      _   / /\              /\_\           /\ \ /\ \     /\_\     //
//           /  \ \     / / /    / /\ / /  \            / / /  _       /  \ \\ \ \   / / /     //
//          / /\ \ \   / / /    / / // / /\ \          / / /  /\_\    / /\ \ \\ \ \_/ / /      //
//         / / /\ \_\ / / /_   / / // / /\ \ \        / / /__/ / /   / / /\ \_\\ \___/ /       //
//        / /_/_ \/_// /_//_/\/ / // / /\ \_\ \      / /\_____/ /   / /_/_ \/_/ \ \ \_/        //
//       / /____/\  / _______/\/ // / /\ \ \___\    / /\_______/   / /____/\     \ \ \         //
//      / /\____\/ / /  \____\  // / /  \ \ \__/   / / /\ \ \     / /\____\/      \ \ \        //
//     / / /      /_/ /\ \ /\ \// / /____\_\ \    / / /  \ \ \   / / /______       \ \ \       //
//    / / /       \_\//_/ /_/ // / /__________\  / / /    \ \ \ / / /_______\       \ \_\      //
//    \/_/            \_\/\_\/ \/_____________/  \/_/      \_\_\\/__________/        \/_/      //
//                                                                                             //
//                                                                                             //
//                                                                                             //
/////////////////////////////////////////////////////////////////////////////////////////////////


contract FWBKEY is ERC721Creator {
    constructor() ERC721Creator("FWB KEY", "FWBKEY") {}
}