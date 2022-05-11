//เขียนโดย superogira - fb.com/superogira , catgg.com/arma3dev , fb.com/groups/arma3devthailand
/*tlq_killList = {
	

	//flush kills and  show most recent
	if (time - tlq_killTime > 37) then {
		tlq_displayedKills = [];
	};


	tlq_displayedKills set [count tlq_displayedKills, tlq_killArray select (count tlq_killArray - 1)];



	_tickerText = "";


	_c = 0;
	for "_i" from (count tlq_displayedKills) to 0 step -1 do{

		_c = _c + 1;
	
		_tickerText = format ["%1<br />%2",tlq_displayedKills select _i,_tickerText];

		if (_c > 5) exitWith{};

	};

	//hintsilent parsetext _tickerText;
	[_tickerText,[safezoneX + 0.01 * safezoneW,4.0],[safezoneY + 0.13 * safezoneH,1],5,0.1,0,7002] spawn BIS_fnc_dynamicText;

	//["<t size='0.4' align='right'>" + _tickerText + "</t>",safeZoneX,safeZoneY,10,0,0,7016] call bis_fnc_dynamicText;


	tlq_killTime = time;

};

//declare global variables

tlq_killArray = [];
tlq_displayedKills = [];
tlq_killTime = 0;

killList2 = {_killfeedtop2 = _this select 0;
			sleep 3;
		 [_killfeedtop2,[safezoneX + 0.43 * safezoneW,3.0],[safezoneY + 0.10 * safezoneH,0.5],3,0.2,0,7003] spawn BIS_fnc_dynamicText;
};
*/
//   "catgivegames_kill_feed" addPublicVariableEventHandler {
      _id = (_this select 0);
      _killer = _id select 0;
      _victim = _id select 1;
      _killWeapon   = _id select 2;
      _distance    = _id select 3;
      _pic      = _id select 4;
	
	WeaponNameColor    = "#FFCC00";
	DistanceColor    = "#FFCC00";	
    killercolor = "#00ff00";
    victimcolor = "#ff0000";

   if ((name player) == _killer) then {
      _popup = format ["
            <t size='0.8' shadow='1' color='%2' shadowColor='#000000'>  &#160;</t>
            <img size='2' shadow='0' image='killfeed\abrakill.paa'/>
            <t size='3' shadow='1' color='%3' shadowColor='#000000'>    &#160;</t><br/>    
            <t size='0.53' shadow='1' color='%3' shadowColor='#000000'></t>
			<t size='0.4' shadow='1' color='#e2dede' shadowColor='#000000'>%4 Metre                                   </t>",
            _victim,
			_pic,
            victimcolor,
            _distance];
      [_popup,0,0.8,2,0,0,7017] spawn bis_fnc_dynamicText;
   };
   
   if ((name player) == _victim) then {
      _popup = format ["
            <t size='0.8' shadow='1' color='%3' shadowColor='#000000'></t><br/>
            <t size='0.6' shadow='1' color='#FFFFFF' shadowColor='#000000'></t>
            <t size='0.6' shadow='1' color='#FFCC00' shadowColor='#000000'></t>
            <t size='0.6' shadow='1' color='#FFFFFF' shadowColor='#000000'></t><br/>
			<img size='3' shadow='1' image=''/>",
            killercolor,
            victimcolor,
            _distance,
			_pic];
//		[_popup] remoteExec ["catgg_fnc_killpopup",0,false];
      [_popup,0,0.5,7,0,0,7017] spawn bis_fnc_dynamicText;
   };
   
         _killfeedtopleft = format["
         <t size='0.4'align='left'shadow='1'color='%6'> %1</t>
		 <t size='0.4'align='left'shadow='1'color='#E5E5E5'> - </t>
         <t size='0.4'align='left'shadow='1'color='%7'>%2</t><br/>
         <t size='0.4'align='left'shadow='1'> Silah: </t>
         <t size='0.4'align='left'shadow='1'color='%8'>%3</t>
         <t size='0.4'align='left'shadow='1'></t>
         <t size='0.4'align='left'shadow='1'color='%9'></t>
		 <t size='0.4'align='left'shadow='1'> </t><br/>
         <img size='1'align='left'shadow='1'image='%5'/>",
         _killer,
         _victim,
         _killWeapon,
         _distance,
         _pic,
         killercolor,
         victimcolor,
         WeaponNameColor,
         DistanceColor
         ];
//		 [_killfeedtopleft] remoteExec ["catgg_fnc_killfeed",0,false];
		 [_killfeedtopleft,[safezoneX + 0.45 * safezoneW,3.0],[safezoneY + 0.01 * safezoneH,0.5],3,0.2,0,7002] spawn BIS_fnc_dynamicText;
		 
//		 [_killfeedtopleft] spawn killList2;
		 
/*		 
		if (count tlq_killArray > 100) then {tlq_killArray = []};
		tlq_killArray set [count tlq_killArray,_killfeedtopleft];
		//[] spawn tlq_killList;
		
	//flush kills and  show most recent
	if (time - tlq_killTime > 37) then {
		tlq_displayedKills = [];
	};


	tlq_displayedKills set [count tlq_displayedKills, tlq_killArray select (count tlq_killArray - 1)];



	_tickerText = "";


	_c = 0;
	for "_i" from (count tlq_displayedKills) to 0 step -1 do{

		_c = _c + 1;
	
		_tickerText = format ["%1<br />%2",tlq_displayedKills select _i,_tickerText];

		if (_c > 5) exitWith{};

	};

	//hintsilent parsetext _tickerText;
	[_tickerText,[safezoneX + 0.01 * safezoneW,3.0],[safezoneY + 0.13 * safezoneH,1.5],5,0.1,0,7002] spawn BIS_fnc_dynamicText;

	//["<t size='0.4' align='right'>" + _tickerText + "</t>",safeZoneX,safeZoneY,10,0,0,7016] call bis_fnc_dynamicText;


	tlq_killTime = time;
		*/
		
 //  };


/*

//start kill registration for player
if (!isNull player) then {
	player spawn tlq_killTicker;
};
/*
if (isServer) then {
	//ai
	{
		if (!(isPlayer _x)) then {
			_x spawn tlq_killTicker};
	} forEach allUnits;
};*/