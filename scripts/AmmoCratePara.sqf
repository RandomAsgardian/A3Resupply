params [["_position", [0,0,0], [[]], 3], ["_attachedObject", objNull, [objNull]]];
_position = _this select 0;
_h = _position param [2, 0];
_h = _h + 75;
_position set [2, _h];
_box = "B_CargoNet_01_ammo_F" createVehicle [0,0,0];
_box setPosATL _position;

parachute_1 = "B_parachute_02_F" createVehicle [0,0,0];
parachute_1 setPosASL (getPosASL _box);
_box attachTo [parachute_1, [0, 0, 0]];

clearItemCargoGlobal _box; clearWeaponCargoGlobal _box; clearMagazineCargoGlobal _box;

{
	// Current result is saved in variable _x
	_box addMagazineCargoGlobal [primaryWeaponMagazine _x select 0, 15]; 
} forEach allPlayers;

_smoke = "SmokeShellRed" createVehicle [0,0,0];
_smoke attachTo [_box, [0, 0, 0]];