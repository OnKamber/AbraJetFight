_caller = _this select 1;
_elapsedTime = 86400;
_timeout = 100;	

if !(isNil {_caller getVariable "Call_last_time_wasp"}) then 
{
	_lastTime 		= _caller getVariable "Call_last_time_wasp";
	_elapsedTime 	= time - _lasttime;	
};

if (_elapsedTime < _timeout) exitWith {_caller groupchat format["F/A-181 Black Wasp II onarılıyor, Hasar : 100/%1", (round(_timeout - _elapsedTime))];};

if ( (getPosATL player select 1 > 100) && (vehicle player IsEqualto player) && (alive player)) then {
    hint format ["İyi uçuşlar %1!", name player];
    _jet = createVehicle ["B_Plane_Fighter_01_F", getMarkerPos "marker_blackwasp", ["marker_blackwasp_1","marker_blackwasp_2"], 0, "FLY"];
    player moveindriver _jet;
};

_musicSec = selectrandom ["Music1","Music2"];
playMusic _musicSec;

_caller setVariable ["Call_last_time_wasp", time];
