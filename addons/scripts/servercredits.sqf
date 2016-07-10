/* 	*********************************************************************** */
 
/*	=======================================================================
/*	SCRIPT NAME: Server Intro Credits Script by IT07
/*	SCRIPT VERSION: v1.3.5 BETA
/*	Credits for original script: Bohemia Interactive http://bistudio.com
/*	=======================================================================
 
/*	*********************************************************************** */
 
//	========== SCRIPT CONFIG ============
	
_onScreenTime = 8; 		//how long one role should stay on screen. Use value from 0 to 10 where 0 is almost instant transition to next role 
//NOTE: Above value is not in seconds!
 
//	==== HOW TO CUSTOMIZE THE CREDITS ===
//	If you want more or less credits on the screen, you have to add/remove roles.
//	Watch out though, you need to make sure BOTH role lists match eachother in terms of amount.
//	Just take a good look at the _role1 and the rest and you will see what I mean.
 
//	For further explanation of it all, I included some info in the code.
 
//	== HOW TO CUSTOMIZE THE COLOR OF CREDITS ==
//	Find line **** and look for: color='#f2cb0b'
//	The numbers and letters between the 2 '' is the HTML color code for a certain yellow.
//	If you want to change the color of the text, search on google for HTML color codes and pick the one your like.
//	Then, replace the existing color code for the code you would like to use instead. Don't forget the # in front of it.
//	HTML Color Codes Examples:	
//	#FFFFFF (white)
//	#000000 (black)	No idea why you would want black, but whatever
//	#C80000 (red)
//	#009FCF (light-blue)
//	#31C300 (Razer Green)			
//	#FF8501 (orange)
//	===========================================
 
 
//	SCRIPT START
//waitUntil {!isNil "dayz_animalCheck"};
sleep 27; //Wait in seconds before the credits start after player IS ingame

// Music line
playMusic "skynet"; 0 fadeMusic 0.7; 60 fadeMusic 0.5; 65 fadeMusic 0.30; 90 fadeMusic 0;
 
_role1 = "Welcome to";
_role1names = ["DayzStandaRol Custom A3Wasteland"];
_role2 = "Server restarts every 8 hours";
_role2names = ["4h, 12h and 20h CEST"];
_role3 = "Optional Mods";
_role3names = ["Community Base Addon <br /> BlastCore: Phoenix 2 <br /> JSRS: DragonFyre <br /> ShackTac Fireteam HUD"];
_role4 = "Visita nuestra comunidad";
_role4names = ["www.DayzStandaRol.com"];
_role5 = "Servidor TeamSpeak 3 [ESP]:";
_role5names = ["Escribe !ts3 en el chat para ver la IP"];
_role6 = "Useful Keyboard Shortcuts";
_role6names = ["END - Earplugs <br /> Windows - Nicks <br /> CTRL+R - Mag Repack"];
 
{
	sleep 2;
	_memberFunction = _x select 0;
	_memberNames = _x select 1;
	_finalText = format ["<t size='0.50' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
	_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
	{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
	_finalText = _finalText + "</t>";
	_onScreenTime + (((count _memberNames) - 1) * 0.5);
	[
		_finalText,
		[safezoneX + safezoneW - 0.8,0.50],	//DEFAULT: 0.5,0.35
		[safezoneY + safezoneH - 0.8,0.7], 	//DEFAULT: 0.8,0.7
		_onScreenTime,
		0.5
	] spawn BIS_fnc_dynamicText;
	sleep (_onScreenTime);
} forEach [
	//The list below should have exactly the same amount of roles as the list above
	[_role1, _role1names],
	[_role2, _role2names],
	[_role3, _role3names],
	[_role4, _role4names],
	[_role5, _role5names],
	[_role6, _role6names]  //make SURE the last one here does NOT have a , at the end
];
