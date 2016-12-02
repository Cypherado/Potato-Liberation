enableSaving [ false, false ];

[] call compileFinal preprocessFileLineNumbers "scripts\shared\atlas_manager.sqf";
[] call compileFinal preprocessFileLineNUmbers "scripts\shared\liberation_functions.sqf";
[] call compileFinal preprocessFileLineNUmbers "scripts\shared\init_sectors.sqf";
[] call compileFinal preprocessFileLineNUmbers "scripts\shared\fetch_params.sqf";
[] call compileFinal preprocessFileLineNUmbers "gameplay_constants.sqf";
[] call compileFinal preprocessFileLineNUmbers "classnames_extension.sqf";
[] call compileFinal preprocessFileLineNUmbers "scripts\shared\classnames.sqf";

[] execVM "PL_version.sqf";
[] execVM "earplugs.sqf";
[] execVM "health_regen.sqf";


if ( GRLIB_revive > 0 ) then {
	[] execVM "FAR_revive\FAR_revive_init.sqf";
};
[] execVM "GREUH\scripts\GREUH_activate.sqf";
[] execVM "outlw_magRepack\MagRepack_init_sv.sqf";

[] call compileFinal preprocessfilelinenumbers "scripts\shared\init_shared.sqf";

if (isServer) then {
	[] call compileFinal preprocessFileLineNumbers "scripts\server\init_server.sqf";
};

if (!isDedicated && !hasInterface && isMultiplayer) then {
	[] spawn compileFinal preprocessFileLineNumbers "scripts\server\offloading\hc_manager.sqf";
};

if (!isDedicated && hasInterface) then {
	waitUntil { alive player };
	[] call compileFinal preprocessFileLineNumbers "scripts\client\init_client.sqf";
} else {
	setViewDistance 1600;
};


/* {
_x setSkill ["aimingspeed", 0.1];
_x setSkill ["spotdistance", 0.1];
_x setSkill ["aimingaccuracy", 0.1];
_x setSkill ["aimingshake", 0.1];
_x setSkill ["spottime", 0.1];
_x setSkill ["spotdistance", 0.5];
_x setSkill ["commanding", 1];
_x setSkill ["general", 1];
} forEach (allUnits select {side _x == east}); */

if (isServer) then { {[_x, [-1, -2, 2]] call bis_fnc_setCuratorVisionModes;} forEach allCurators; };
