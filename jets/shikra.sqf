_caller = _this select 1;
_elapsedTime = 86400;
_timeout = 100;	

if !(isNil {_caller getVariable "HALO_last_time_shikra"}) then 
{
	_lastTime 		= _caller getVariable "HALO_last_time_shikra";
	_elapsedTime 	= time - _lasttime;	
};

if (_elapsedTime < _timeout) exitWith {_caller groupchat format["To-201 Shikra onarılıyor, Hasar : 100/%1", (round(_timeout - _elapsedTime))];};

if ( (getPosATL player select 1 > 100) && (vehicle player IsEqualto player) && (alive player)) then {
    hint format ["İyi uçuşlar %1!", name player];
    _jet = createVehicle ["O_Plane_Fighter_02_F", getMarkerPos "marker_shikra",["marker_shikra_1","marker_shikra_2"], 0, "FLY"];
	vehicle player setPylonLoadout ["PylonPod_1Rnd_Missile_AA_04_F","PylonPod_1Rnd_Missile_AA_04_F"];
    player moveIndriver _jet;
};

_musicSec = selectrandom ["Music1","Music2","Music3"];
playMusic _musicSec;

_caller setVariable ["HALO_last_time_shikra", time];

