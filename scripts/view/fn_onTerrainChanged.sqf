
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the players terraingrid when called.
*/
private "_type";
_type = param [0,"",[""]];
if(_type == "") exitWith {};
	
switch (_type) do {
	case "Yok": {if(isNil "tawvd_disablenone") then {setTerrainGrid 50;};};
	case "Az": {setTerrainGrid 30;};
	case "Normal": {setTerrainGrid 12.5;};
	case "Fazla": {setTerrainGrid 3.125;};
};