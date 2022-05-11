_caller = _this select 1;
_elapsedTime = 86400;
_timeout = 100;	

if !(isNil {_caller getVariable "HALO_last_time_wipeout"}) then 
{
	_lastTime 		= _caller getVariable "HALO_last_time_wipeout";
	_elapsedTime 	= time - _lasttime;	
};


if (_elapsedTime < _timeout) exitWith {_caller groupchat format["A-164 Wipeout onarılıyor, Hasar : 100/%1", (round(_timeout - _elapsedTime))];};

if ( (getPosATL player select 1 > 100) && (vehicle player IsEqualto player) && (alive player)) then {
    hint format ["İyi uçuşlar %1!", name player];
    _jet = createVehicle ["B_Plane_CAS_01_dynamicLoadout_F", getMarkerPos "marker_wipeout",["marker_wipeout_1","marker_wipeout_2"], 0, "FLY"];
    player moveIndriver _jet;
};

_musicSec = selectrandom ["Music1","Music2"];
playMusic _musicSec;

_caller setVariable ["HALO_last_time_wipeout", time];