// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: Sensual Editions
/// @author: manifold.xyz

import "./ERC721Creator.sol";

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                    //
//                                                                                                                    //
//                                                                                                                    //
//          ___           ___           ___           ___           ___           ___                                 //
//         /\__\         /\__\         /\  \         /\__\         /\  \         /\  \                                //
//        /:/ _/_       /:/ _/_        \:\  \       /:/ _/_        \:\  \       /::\  \                               //
//       /:/ /\  \     /:/ /\__\        \:\  \     /:/ /\  \        \:\  \     /:/\:\  \                              //
//      /:/ /::\  \   /:/ /:/ _/_   _____\:\  \   /:/ /::\  \   ___  \:\  \   /:/ /::\  \   ___     ___               //
//     /:/_/:/\:\__\ /:/_/:/ /\__\ /::::::::\__\ /:/_/:/\:\__\ /\  \  \:\__\ /:/_/:/\:\__\ /\  \   /\__\              //
//     \:\/:/ /:/  / \:\/:/ /:/  / \:\~~\~~\/__/ \:\/:/ /:/  / \:\  \ /:/  / \:\/:/  \/__/ \:\  \ /:/  /              //
//      \::/ /:/  /   \::/_/:/  /   \:\  \        \::/ /:/  /   \:\  /:/  /   \::/__/       \:\  /:/  /               //
//       \/_/:/  /     \:\/:/  /     \:\  \        \/_/:/  /     \:\/:/  /     \:\  \        \:\/:/  /                //
//         /:/  /       \::/  /       \:\__\         /:/  /       \::/  /       \:\__\        \::/  /                 //
//         \/__/         \/__/         \/__/         \/__/         \/__/         \/__/         \/__/                  //
//          ___                                                               ___           ___           ___         //
//         /\__\         _____                                               /\  \         /\  \         /\__\        //
//        /:/ _/_       /::\  \       ___           ___         ___         /::\  \        \:\  \       /:/ _/_       //
//       /:/ /\__\     /:/\:\  \     /\__\         /\__\       /\__\       /:/\:\  \        \:\  \     /:/ /\  \      //
//      /:/ /:/ _/_   /:/  \:\__\   /:/__/        /:/  /      /:/__/      /:/  \:\  \   _____\:\  \   /:/ /::\  \     //
//     /:/_/:/ /\__\ /:/__/ \:|__| /::\  \       /:/__/      /::\  \     /:/__/ \:\__\ /::::::::\__\ /:/_/:/\:\__\    //
//     \:\/:/ /:/  / \:\  \ /:/  / \/\:\  \__   /::\  \      \/\:\  \__  \:\  \ /:/  / \:\~~\~~\/__/ \:\/:/ /:/  /    //
//      \::/_/:/  /   \:\  /:/  /   ~~\:\/\__\ /:/\:\  \      ~~\:\/\__\  \:\  /:/  /   \:\  \        \::/ /:/  /     //
//       \:\/:/  /     \:\/:/  /       \::/  / \/__\:\  \        \::/  /   \:\/:/  /     \:\  \        \/_/:/  /      //
//        \::/  /       \::/  /        /:/  /       \:\__\       /:/  /     \::/  /       \:\__\         /:/  /       //
//         \/__/         \/__/         \/__/         \/__/       \/__/       \/__/         \/__/         \/__/        //
//                                                                                                                    //
//                                                                                                                    //
//                                                                                                                    //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


contract SENSUALS is ERC721Creator {
    constructor() ERC721Creator("Sensual Editions", "SENSUALS") {}
}