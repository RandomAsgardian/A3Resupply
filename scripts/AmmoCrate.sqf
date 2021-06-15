params [["_position", [0,0,0], [[]], 3], ["_attachedObject", objNull, [objNull]]];
_position = _this select 0;
_box = "B_CargoNet_01_ammo_F" createVehicle _position;
clearItemCargoGlobal _box; clearWeaponCargoGlobal _box; clearMagazineCargoGlobal _box;

{
	// Current result is saved in variable _x
	_box addMagazineCargoGlobal [primaryWeaponMagazine _x select 0, 15]; 
} forEach allPlayers;