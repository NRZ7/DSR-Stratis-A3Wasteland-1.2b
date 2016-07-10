// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: briefing.sqf

if (!hasInterface) exitWith {};

_trimName = { _this select [1, count _this - 2] };
_aKeyName = { _arr = actionKeysNamesArray _this; if (count _arr == 0) exitWith {"<UNDEFINED>"}; _arr select 0 };

#define NKEYNAME(DIK) (keyName DIK call _trimName)
#define AKEYNAME(ACT) (ACT call _aKeyName)

waitUntil {!isNull player};

player createDiarySubject ["infos", "Infos and Help"];
player createDiarySubject ["changelog", "Changelog"];
player createDiarySubject ["credits", "Credits"];

player createDiaryRecord ["changelog",
[
"v1.2b",
"
<br/>[Added] Scoreboard scrolling via mousewheel
<br/>[Added] New paintjobs for Kajman, Strider, Gorgon, Hatchback
<br/>[Changed] Hostile Heli (single) crates now spawn on touchdown
<br/>[Changed] Lowered Ifrit center of mass to reduce rollovers
<br/>[Changed] Updated antihack database
<br/>[Fixed] Saved grenades not throwable on rejoin
<br/>[Fixed] Corpses not ejecting from vehicle wrecks
<br/>[Fixed] Items not dropping from vehicle wreck corpses
<br/>[Fixed] Revive not triggering properly on fatal shot
<br/>[Fixed] Vehicle turret ammo saving issues
<br/>[Fixed] Too low damage resistance during revive mode
<br/>[Fixed] UGVs not airliftable via R3F
<br/>[Fixed] Revive broken after getting run over by vehicles
<br/>[Fixed] Veh respawn not being delayed when owner is within 1km
<br/>[Fixed] All armor values showing 0 in general store
<br/>[Fixed] Supplies category in general store sometimes empty
<br/>[Fixed] Server rules not showing anymore in map menu
<br/>[Fixed] Territory info overlapping with vehicle HUD
<br/>[Fixed] Vehicle contents selling money exploit
<br/>[Fixed] Antihack kicks not always working properly
<br/>[Fixed] Various minor bugfixes and optimizations
"
]];

player createDiaryRecord ["changelog",
[
"INFO",
"
<br/>Para el registro de cambios completo y en Español así como para participar en las discusiones sobre el servidor, visita DayzStandaRol.com
<br/>
<br/>Visit DayzStandaRol.com for complete changelog and server discussion.
"
]];


player createDiaryRecord ["credits",
[
"Credits",
"
<br/><font size='16' color='#BBBBBB'>Hosted and Modded by:</font>
<br/>	* NRZ7 (DayzStandaRol.com)
<br/>
<br/><font size='16' color='#BBBBBB'>Developed by A3Wasteland.com:</font>
<br/>	* AgentRev (TeamPlayerGaming)
<br/>	* JoSchaap (GoT/Tweakers.net)
<br/>	* MercyfulFate
<br/>	* His_Shadow (KoS/KillonSight)
<br/>	* Bewilderbeest (KoS/KillonSight)
<br/>	* Torndeco
<br/>	* Del1te (404Games)
<br/>
<br/><font size='16' color='#BBBBBB'>Original Arma 2 Wasteland missions by:</font>
<br/>	* Tonic
<br/>	* Sa-Matra
<br/>	* MarKeR
<br/>
<br/><font size='16' color='#BBBBBB'>Improved and ported to Arma 3 by 404Games:</font>
<br/>	* Deadbeat
<br/>	* Costlyy
<br/>	* Pulse
<br/>	* Domuk
<br/>
<br/><font size='16' color='#BBBBBB'>Other contributors:</font>
<br/>	* 82ndab-Bravo17 (GitHub)
<br/>	* afroVoodo (Armaholic)
<br/>	* Austerror (GitHub)
<br/>	* AWA (OpenDayZ)
<br/>	* bodybag (Gameaholic.se)
<br/>	* code34 (iniDBI)
<br/>	* Das Attorney (Jump MF)
<br/>	* Ed! (404Games forums)
<br/>	* Farooq (GitHub)
<br/>	* gtoddc (A3W forums)
<br/>	* HatchetHarry (GitHub)
<br/>	* Hub (TeamPlayerGaming)
<br/>	* k4n30 (GitHub)
<br/>	* Killzone_Kid (KillzoneKid.com)
<br/>	* Krunch (GitHub)
<br/>	* LouDnl (GitHub)
<br/>	* madbull (R3F)
<br/>	* Mainfrezzer (Magnon)
<br/>	* meat147 (GitHub)
<br/>	* micovery (GitHub)
<br/>	* Na_Palm (BIS forums)
<br/>	* Outlawled (Armaholic)
<br/>	* red281gt (GitHub)
<br/>	* RockHound (BierAG)
<br/>	* s3kShUn61 (GitHub)
<br/>	* Sa-Matra (BIS forums)
<br/>	* Sanjo (GitHub)
<br/>	* SCETheFuzz (GitHub)
<br/>	* Shockwave (A3W forums)
<br/>	* SicSemperTyrannis (iniDB)
<br/>	* SPJESTER (404Games forums)
<br/>	* spunFIN (BIS forums)
<br/>	* Tonic (BIS forums)
<br/>	* wiking.at (A3W forums)
<br/>	* xx-LSD-xx (Armaholic)
<br/>	* Zenophon (BIS Forums)
<br/>
<br/><font size='16'>Thanks A LOT to everyone involved for the help and inspiration!</font>
"
]];


_WASD = AKEYNAME("MoveForward") + "," + AKEYNAME("MoveBack") + "," + AKEYNAME("TurnLeft") + "," + AKEYNAME("TurnRight");

player createDiaryRecord ["infos",
[
"Admin Spectate keys",
"
<br/>Admin menu Spectate camera controls:
<br/>
<br/>Shift + " + AKEYNAME("NextChannel") + " (next player)
<br/>Shift + " + AKEYNAME("PrevChannel") + " (previous player)
<br/>Ctrl + " + NKEYNAME(18) + " (exit camera)
<br/>Ctrl + " + AKEYNAME("Chat") + " (attach/detach camera from target)
<br/>Ctrl + " + NKEYNAME(35) + " (toggle target HUD)
<br/>" + AKEYNAME("NightVision") + " (nightvision, thermal)
<br/>" + _WASD + " (move camera around)
<br/>" + NKEYNAME(16) + " (move camera up)
<br/>" + NKEYNAME(44) + " (move camera down)
<br/>Mouse Move (rotate camera)
<br/>Mouse Wheel Up (increase camera speed)
<br/>Mouse Wheel Down (decrease camera speed)
<br/>Shift + " + _WASD + " (move camera around faster)
<br/>" + AKEYNAME("ShowMap") + " (open/close map - click on map to teleport camera)
"
]];

player createDiaryRecord ["infos",
[
"Player hotkeys",
"
<br/>List of default player hotkeys:
<br/>
<br/>" + NKEYNAME(41) + " (open player menu)
<br/>" + NKEYNAME(207) + " (toggle earplugs)
<br/>" + NKEYNAME(199) + ", " + NKEYNAME(219) + ", " + NKEYNAME(220) + " (toggle player names)
<br/>Ctrl + " + AKEYNAME("GetOut") + " (emergency eject)
<br/>" + AKEYNAME("GetOver") + " (open parachute)
<br/>Shift + " + NKEYNAME(201) + " / " + NKEYNAME(209) + " (adjust nightvision)
<br/>" + NKEYNAME(22) + " (admin menu)
"
]];

player createDiaryRecord ["infos",
[
"Hints and Tips",
"
<br/><font size='18'>A3Wasteland</font>
<br/>
<br/>* At the start of the game, spread out and find supplies before worrying about where to establish a meeting place or a base, supplies are important and very valuable.
<br/>
<br/>* When picking a base location, it is best advised to pick a place that is out of the way and not so obvious such as airports, cities, map-bound bases, etc. remember, players randomly spawn in and around towns and could even spawn inside your base should you set it up in a town.
<br/>
<br/>* If you spawn in an area with no vehicles or supplies in the immediate area, DO NOT just click respawn from the pause menu, chances are if you search an area of a few hundred meters, you will find something.
<br/>
<br/>* Always be on the lookout for nightvision. they are located in the ammo crates, and there are pairs scattered throughout vehicles. You can also purchase them from the gunstores. Nighttime without them SUCKS, and if you have them, you can conduct stealth raids on enemy bases under the cover of complete darkness.
<br/>
<br/>* When you set up a base, never leave your supplies unguarded, one guard will suffice, but it is recommended you have at least 2, maybe 3 guards at base at all times.
<br/>
<br/>* There are very aggressive AI characters that spawn with most missions and will protect the mission objectives with deadly force, be aware of them.
"
]];

player createDiaryRecord ["infos",
[
"About Wasteland",
"
<br/>Wasteland is a team versus team versus team sandbox survival experience. The objective of this mission is to rally your faction, scavenge supplies, weapons, and vehicles, and destroy the other factions. It is survival at its best! Keep in mind this is a work in progress, please direct your reports to http://forums.a3wasteland.com/
<br/>
<br/>FAQ:
<br/>
<br/>Q. What am I supposed to do here?
<br/>A. See the above description
<br/>
<br/>Q. Where can I get a gun?
<br/>A. Weapons are found in one of three places, first in ammo crates that come as rewards from missions, inside and outside buildings, and second, in the gear section of the vehicles, which also randomly spawn around the map. The last place to find a gun would be at the gunshops located throughout the map. You can also find them on dead players whose bodies have not yet been looted.
<br/>
<br/>Q. What are the blue circles on the map?
<br/>A. The circles represent town limits. If friendly soldiers are in a town, you can spawn there from the re-spawn menu; however if there is an enemy presence, you will not be able to spawn there.
<br/>
<br/>Q. Why is it so dark, I cant see.
<br/>A. The server has a day/night cycle just like in the real world, and as such, night time is a factor in your survival. It is recommended that you find sources of light or use your Nightvision Goggles as the darkness sets in.
<br/>
<br/>Q. Is it ok for me to shoot my team mates?
<br/>A. If you are member of BLUFOR or OPFOR teams, then you are NOT allowed to shoot or steal items and vehicles from other players. If you play as Independent, you are free to engage anyone as well as team up with anyone you want.
<br/>
<br/>Q. Whats with the canisters, baskets and big bags?
<br/>A. This game has a food and water system that you must stay on top of if you hope to survive. You can collect food and water from food sacks and wells, or baskets and plastic canisters dropped by dead players. Food and water will also randomly spawn around the map.
<br/>
<br/>Q. I saw someone breaking a rule, what do I do?
<br/>A. Simply go into global chat and get the attention of one of the admins or visit our forums, and make a report if the offense is serious.
"
]];
