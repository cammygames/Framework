/*
	File: fn_escortAction.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNil "_unit" OR isNull _unit OR !isPlayer _unit OR side _unit != civilian) exitWith {};
_unit attachTo [player,[-0.2,1.1,0]];
_unit setVariable["transporting",false,true];
_unit setVariable["Escorting",true,true];
player reveal _unit;