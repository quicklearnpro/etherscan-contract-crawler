// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: DebClarkNZ
/// @author: manifold.xyz

import "./ERC721Creator.sol";

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               //
//                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               //
//    <!DOCTYPE html><head><meta charset="utf-8"></head><body style="font: 9px monospace; line-height:9px; background-color:white;"><span></span><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'</span><span style="color:#252525">█</span><br><span style="color:#7d7d7d">&nbsp;&nbsp;&nbsp;&nbsp;▄███▀▀▀▀▀█▄&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;▄██▌&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;██&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;██&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;╓▄▄████</span><br><span style="color:#7d7d7d">&nbsp;&nbsp;&nbsp;▀▀▐</span><span style="color:#060606">█&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;╟</span><span style="color:#141414">█&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color:#6c6c6c">,,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;▄█▀▄█▌</span><span style="color:#6c6c6c">,,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;,,&nbsp;&nbsp;&nbsp;&nbsp;╫</span><span style="color:#000000">█▌&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;█▌&nbsp;▀▀▀▀╙└&nbsp;▓</span><span style="color:#090909">█▀</span><br><span style="color:#7d7d7d">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color:#656565">j</span><span style="color:#000101">█&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;▓</span><span style="color:#0f0f10">█&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;█&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;██&nbsp;&nbsp;▀</span><span style="color:#565556">╙&nbsp;&nbsp;█&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;▌&nbsp;&nbsp;&nbsp;&nbsp;╫██</span><span style="color:#656464">⌐&nbsp;&nbsp;&nbsp;&nbsp;█▌&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;╓█▀</span><br><span style="color:#7d7d7d">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;▐</span><span style="color:#000000">█&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;▓</span><span style="color:#181818">█&nbsp;█</span><span style="color:#565656">▄▄█&nbsp;█&nbsp;└█&nbsp;&nbsp;██&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;█&nbsp;²▀,█&nbsp;└█└▀&nbsp;▌▄▀&nbsp;&nbsp;█▌╙█▄&nbsp;&nbsp;&nbsp;█⌐&nbsp;&nbsp;&nbsp;&nbsp;▄█▀</span><br><span style="color:#7d7d7d">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;▐█&nbsp;&nbsp;&nbsp;&nbsp;╓█▀&nbsp;&nbsp;█,&nbsp;╓&nbsp;█&nbsp;&nbsp;█&nbsp;▓█&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;█&nbsp;▓▌&nbsp;█&nbsp;&nbsp;█&nbsp;&nbsp;&nbsp;█╙█&nbsp;&nbsp;█&nbsp;&nbsp;&nbsp;█▓&nbsp;,</span><span style="color:#010101">█&nbsp;&nbsp;&nbsp;▄</span><span style="color:#191919">█▀</span><br><span style="color:#7d7d7d">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;╫█&nbsp;&nbsp;╓██&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;█▌&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;,▄▄&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;▐█&nbsp;&nbsp;&nbsp;&nbsp;╙▀█╨&nbsp;▄█▌▄▄▓█████▀▀▀▀▀▀</span><br><span style="color:#7d7d7d">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;╟</span><span style="color:#030303">██</span><span style="color:#191919">█▀&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;╙██▄▄▄▄▓██▀▀</span><span style="color:#606060">└&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;█▌&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;▀▀▀▀╙</span><br><span style="color:#7d7d7d">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└╙&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└└└</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><span style="color:#7d7d7d">&nbsp;</span><br><br></body></html>    //
//                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               //
//                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


contract DCNZ is ERC721Creator {
    constructor() ERC721Creator("DebClarkNZ", "DCNZ") {}
}