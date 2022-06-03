// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: visionandlight icm
/// @author: manifold.xyz

import "./ERC721Creator.sol";

////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                            //
//                                                                                            //
//                                                                                            //
//                          |||'G│╔Ö│{╠░╗▄J#╙∩#└.M║▒╢▒▓▓▓▓▓▓▀▓▓▓m┬▄,<░||||||||j/||||||||||    //
//                       ¡  (>⌠φ│░│░]M╘∩▒│║▒7░Ö│,|║║╢▒▒▓▓▓▓▓( ∩┘▓▄╙▓,Ñ|∩|(||ç░⌠|||||||||||    //
//                        ;  ,G╚╡¼║├∞Aw║▐║░▒▒╫╜╙║|╙╠║▒▒▓▓▒▒▒│▐   ╙▓┌║▒Vñ"|▄∩Ö|Ñ|||||||,|||    //
//                          ∩*⌐│╠╢╙▒≥M╠▒▒▒│▐╠▒"#Ñ╓║║▒▒▒▓▓▒▒▓▓▄▄▄▄¬┌▓▓╝╬║æ╙,⌠╓├|| (|||/.|||    //
//                         ` │|*çÑ┼╢m╛"ÑÑ╠║▒▒╢Q├▒│╠║▒▒▓▓▓▒▓▓▌  ╚╘╙▀▓▓æ▓╫╜╖▄ñ╙≥╓¿▄Q«è│.ⁿ  |    //
//                      (, ,∩ │`VÑ║░░MJ│Ñ░╠╢╠#║▒╠#╠▒▒▓▒▓▓▓▓▓▓   ∩ ,╙║ .▀▓▄╪æ*"└               //
//                       ~\∩└"*M/┘{▒╢Ç√┐▒∩╠ÑÑ║▒╙*∩╠║▒▒▒▓▓▓▓▓▓   ,"  ╙▒ ÖuY╠╝▄,     ,          //
//                         ├ ``k.M»Ö║▒┴╜▓▓▓▓▒▒Æd░Γ║║╢▒▓▓▓▓▓▓▓*"      '▒k├Q╔╚║▓▓▓▄  ((         //
//                       `~ ╘>ÿ▐∞░\╢┬╚▓,▒▒#▒Ñ╜╙└└│╠╠╢▒▒▒▓▓▓▓▓         ├░│MW▓▓▓███▓▄∩" ╓▄      //
//                         \ `Ç│░  '┐ .║▓╫▒∩   ~ {│╠▒▒▓▒▓▓▓▓▒      ╓£░┤Ñ╠▒▒▓▓▓▓▓██▓▓▒▓▓▓▓▓    //
//                          `-.║▒└┘(∞A#W▓▒   `  ┌{│╠▒▒▒▓▓▓▓▓▒∩   ƒ░WÑ┤W║▒▒▓▓▒▒▓▓▓▓▓▓▓▒▓▓▓▓    //
//                     ^`,^~¬┌,╞║,∩∩⌐└∩░▓Ñ╔Çy].-|│⌠║║▒▓▓▓▓▓▒▓⌐ y░╜╙░⌠W║▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓    //
//                           `.«▓ `"  "├▓▒V√┌╔░░░YΘ║║▒▒▓▓▓▓▒▒ (╡░╔▄▄▄▒▓▓▓▓▒▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓    //
//                  ╓ ,.        ║      │▓▌└J▓▓▓▓▓▒▒▒▒║║╠▒╣▒▒▒æ#▓▓██████████████████▓▓▓▒▓▓▓    //
//                 (   ¡       "║       ▓▓ ∩▓██║║▒▒▒▒▒▒╢▒▒▒▒▒▒▒▒▀▒▓▓▓▓█▒▒▒▒▒▒▒▒▒▒▒▒▀▀▀▀▒▓▓    //
//            ^ M⌐(┤¼*▒Ö¼«,.M⌐` ║∩     (▓▓   ▒▒╠╠║║▒▒▒▒▒╢▒║▒▒▀|││╠╠╠╠║╢▒▓█████████████████    //
//            :╙╙╓#└ "p║▒▒▒▒▒▄W∩(b ╔▐╡└(▒▓╕  └▓╡╠╠║╢▒▒▒║║║▒▓Ñ|||│┤╠╠╠▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓████    //
//        mmæ╗#╗▒▒▒▒#▒▒▒▓▓▒▒▒▒▓▓▒▓▓▒▓▓▓.▒▓▒▒▒▒▒▓╠╠╠║▒║║╠╠║▓▌∩ |''│║╢▒▒▒▒▒▒▓▒▓▓▓▓▓▓▓▓▓▓▓██▓    //
//        ▓▓▓▓▓▓▒▒▒▒▓▒▒▓▓▓▒▓▓▓▓▓Ñ▒▓▓▒▒▓(▒▓▓▓▒▒▒▒▓╠╠╠╠╠╠╠╠╠▒░Ö⌠W╔m╢▓▓▓▓▓▓▒╠▒▓▓▓▓▓▒▒▒▒▒▒█▓▓▓    //
//        ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒║╠║╠╠╚╠░▒▒║╠▒▒╖▒▒▒▒▒▒▒▒╠▓▒╠╠╠╠║╡╙▒∩||││M░╠║▒▒▀╚╚╠▒▓▓▓█▓██▓▓▓▒▓▓▓▓    //
//        ║║╠╠╠╠▒║▒▒║▒▒▒▒▒▒▒║╠║╠░▒▒▒╠╢▒║▒▒▒▒▒▒▒▒╢║▓▒║▒║║ÑM, |└╙M#W╡╠╠╚└│#║▒▒▒▓▒▓▓▒▒▒▒▒▒▒▓▓    //
//        ╢║║Ñ║╠╠║╠╙╠╠╠Ñ║▒▒▒▒▒▒▒▒▒▒▒▒▒▒║▒▒▒▒▒▒▒▒║╠╠║▓▒║░░║Ö   |│││░╠║╙" │║▒▒▒▒▓▒▒▒▒▒▒▒▒▒▒▓    //
//        ╠╠│#╠║╠╠╠╠║╠╠╠╠╠║║▒▒▒▒▒▒▒▒▒▒▒▒▓▓████████▓▓▒▓▒░ÑÑ∩|||||││║▒▒#▒Θ│║▒▓▓▓▓▓▒▒▒▒▒▒▒▒▓▓    //
//        ╢║╠╠║▒║╠╠▒▒╠║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓███████████▓▓▒▓▄╓||||||│╠▒Ñ│╞╠╠▒▓▒▓▓▒▒▒▓▒▒▒▒▒▒▓▓▀    //
//        ▒▒▒▒║▒▒▒▒▒▒▒▒▒▒▒▒██▓███▓▓▓▒║▄▒┤Ñ╠Ñ▌▀█████████▓▒▒╦| ,|⌠│░│╓M│╠║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒    //
//        ▒▒▒▓▒▒▒▒▒▒▒▒╢║▓██████████▓▓▓▓▓▓▒▓█████████████████▌|/∩│╠▒▒▒▓▓▒▒▒▓▓█▓▒▒▒▒▒▒▒▒▒▓▓▒    //
//        ▓▓▒▒▒▓▒▒▒▒▒░╢▓███████████▓█▓▓▓▓▒▓▓████████████████▓▄y⌠║▒▒││╚╠║▒▒▒▒▒▒▓▓▒▒▒▒▒▒▓▓▓▓    //
//        ▒▒▒▒▒▓▒▒▒▒▒▒▒╢▒▒█▀▀█████▓▒▒▓▀███████████████████████m│Ñ╙░Γ╠╠║▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▓▓▓▒    //
//        ▒▒▓▒▒▓██████▓▓▓▓█▓▓▓▓▓███████▓██████████████████████│││││╚░╠╠▒▓▓▒▓▒▒▒▒▒▒▒▒▒▓▓▓▓▓    //
//        ▒▒███████████▓▒▒▒▒██▓▓▓▓██████▓█████████████████████||∩││Γ░║▒▒▓▓▒▓▒▒▒▒▒▒▒▓▒▓▓▓▓▓    //
//        █████████████▓▒▓▓▓▒▒█▓▓▓▓▒█████████████████████████▌|││WW╠║║▒▒▓▓▓▒▒▒▓▒▒▒▓▒▒╢▓▓▓▓    //
//        ███████▒▓████████▒▓▓▒▒███▓▓████████▓▓██████████████Ñ||│╚╠╠║▒▒▒▒▒▒▒▒▒▒▒▓▒▒▒▒▒▓▒▓▓    //
//        ███████████████████▒▓▓▒███▓████████████████████████b{|│▐╠▒▒▒▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒▓▒▒▒    //
//        ████████████████████▓▓▓▒█▓█▒███████████████████████▒│││├║▒▒▒▒▓▒▒▒▒▀▒▒▒▒▒▒▒▒▓█▒▒▒    //
//        ██████████████████████▓▓▒██▓▓███████▓█████████████▓▓Ñ╚╠╠╠▒▒▒░╠║▒Ñ║▓▒▒▒▒▒▒▒▒▓▓▒▒▒    //
//        ██████████████████████▓▓▒███▓█████▓███████████████▒▓▓│║▒▒▒╠░║▒▒▒╢▒▒▒▒▒▒▒▒▒▓▓▓▒▓▒    //
//        ███████████████████████▓▒▓████████████████████████▒▓▓M╠▒║▓▓▒▓▓▓▓▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓    //
//        ██████████████████████▓▒▒▓██▓▒████████████████████▓▒▓▒░║▒▒▓▓▓▓▓██▀▒▒▒▒▒▒▓▓▒▒▓▓▓▓    //
//        ██████████████████████▒▒▓▓██▓██████████████████▓██▓▒▓▒║▒▒▒▓▒▓██▀▒▓▓▒▒▒▒▓▓▒▓▓▓▓▓▓    //
//        ████████████████████▀▒▒▒▒██▓████████████████████▓▒▒▒▓▒▒▒▒▒▓█▓▀▒▓▓▓▒╠▒▒▒▒▓▓▓▓▓▓▓▓    //
//        ▒▀███████████████▀▒▒╠║▒▒▓█████▓████████████████▓▒▓Ñ▒▒▒▒▒██▓▀Ñ▒▒▓▒╠╠║║▒▒║▒▓▓▓▓▓▓▓    //
//        ▓▒▒█████████▓▒▒▒▒╠▒▒▓▒▓██████████████████████████V╓▓▓▓██▓▀Ñ║▓▓▒╠╠╠╠╠╠▒║▒▓▓▓▓▓▓▓▒    //
//        ▒▒▒▒▒████████▓▓▓▓▓▓▒▀▒▓████████████▓▓▓▓▓▓▓██████▓▒▒▒▓█▓▀║▄▒▓▓╠▒╠╠╠│║║░▒▒▓▓▓║▓▓▒M    //
//        ▒▓▒▒▒▒▒▒██████▓▒▒▒▄▓▓▒▓▒▓▓▓▓▓█████████████████████▓▓▓▀Ñ▒▓▓▓▓▓▓▓▓▓▓▓▒░║▒▓▓▓#▒▒▒╠│    //
//        ▓▓▒▒▒▒▓▒▒▒▒▒▒▓▒▒▒▒▒▒▓▓███▓█▓▓▓▓▓▓▓█████████▒▓███▒▒▒▓Ñ∩║▓▓▓▓▓▓▓▓▓▓▓▓▒▒▓▓█▓▓▓▓▒▒M║    //
//        ▓▒▓▓▒▓▓▒║▒▒╢▓▒▒▒▒▒▒▒▒▒▒▒▒▓▒███████████████▒▒╚╠╠▓▒▒▒│∩╔║▒▒│▒▓▓▀▀▓▓▓▓▓▓▓██▓▓▓▓▓▓▒▒    //
//        ▓▓▓▓▒▓▓▒▒▒▒▓▒▓▒▓▒▒▒████▒▒█████████████████▒▒║║▒▒Ñ║░|#║╢Ñ╓▓▒▓│#╠▒╚▐▒▒▓▓▓▓▓▓▓▓▓▒▓▓    //
//        ▓▓▒▒▒▒▒▒▒▒▒▓▓▓▒▒▒╢▒████████████▓▒▒▓█▓█████▓░║▒▒╠WÑ|║▒╠░╔▒▒▒│║║╠╙╔▒▒M╢▒▓Ñ│╠▒▀▒║▒▒    //
//                                                                                            //
//    ---                                                                                     //
//    ^[ []                                                                                   //
//                                                                                            //
//                                                                                            //
//                                                                                            //
////////////////////////////////////////////////////////////////////////////////////////////////


contract valicm is ERC721Creator {
    constructor() ERC721Creator("visionandlight icm", "valicm") {}
}