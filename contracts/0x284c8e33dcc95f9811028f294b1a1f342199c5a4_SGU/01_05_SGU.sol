// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: WeeUniverse
/// @author: manifold.xyz

import "./ERC721Creator.sol";

//////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                  //
//                                                                                                  //
//    __      __                _   _             _                                                 //
//    \ \    / / ___     ___   | | | |  _ _      (_)    __ __    ___      _ _    ___     ___        //
//     \ \/\/ / / -_)   / -_)  | |_| | | ' \     | |    \ V /   / -_)    | '_|  (_-<    / -_)       //
//      \_/\_/  \___|   \___|   \___/  |_||_|   _|_|_   _\_/_   \___|   _|_|_   /__/_   \___|       //
//    _|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|      //
//    "`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'      //
//                                                                                                  //
//                                                                                                  //
//          ___ ___ .  __     ___  __     ___       ___                      ___  __   __   ___     //
//    |\ | |__   |  ' /__`     |  /  \     |  |__| |__     |  | |\ | | \  / |__  |__) /__` |__      //
//    | \| |     |    .__/     |  \__/     |  |  | |___    \__/ | \| |  \/  |___ |  \ .__/ |___     //
//                                                                                                  //
//                                                                                                  //
//      _____                   __     __                _                                          //
//      / ____|                  \ \   / /     /\        | |                                        //
//     | (___  _ __   __ _  ___ __\ \_/ /     /  \   _ __| |_                                       //
//      \___ \| '_ \ / _` |/ __/ _ \   /     / /\ \ | '__| __|                                      //
//      ____) | |_) | (_| | (_|  __/| |     / ____ \| |  | |_                                       //
//     |_____/| .__/ \__,_|\___\___||_|    /_/    \_\_|   \__|                                      //
//            | |                                                                                   //
//            |_|                                                                                   //
//                                                                                                  //
//                                                                                                  //
//       ___      ___   __    _ .____  _______                                                      //
//     .'   `.  .'   `. |\   |  /     '   /                                                         //
//     |     |  |     | | \  |  |__.      |                                                         //
//     |  ,_ |  |     | |  \ |  |         |                                                         //
//      `._.`-.  `.__.' |   \|  /         /                                                         //
//                                                                                                  //
//                                                                                                  //
//                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////


contract SGU is ERC721Creator {
    constructor() ERC721Creator("WeeUniverse", "SGU") {}
}