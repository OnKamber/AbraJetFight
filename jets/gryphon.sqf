_caller = _this select 1;
_elapsedTime = 86400;
_timeout = 100;	

if !(isNil {_caller getVariable "HALO_last_time_gryphon"}) then 
{
	_lastTime 		= _caller getVariable "HALO_last_time_gryphon";
	_elapsedTime 	= time - _lasttime;	
};

if (_elapsedTime < _timeout) exitWith {_caller groupchat format["A-149 Gryphon onarılıyor, Hasar : 100/%1", (round(_timeout - _elapsedTime))];};

if ( (getPosATL player select 1 > 100) && (vehicle player IsEqualto player) && (alive player)) then {
    hint format ["İyi uçuşlar %1!", name player];
    _jet = createVehicle ["I_Plane_Fighter_04_F", getMarkerPos "marker_gryphon",["marker_gryphon_1","marker_gryphon_2"], 0, "FLY"];
    player moveIndriver _jet;
};

_musicSec = selectrandom ["Music1","Music2"];
playMusic _musicSec;

_caller setVariable ["HALO_last_time_gryphon", time];