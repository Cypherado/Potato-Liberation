// TRUE is IN
// FALSE is OUT

Cell_earplugs = true;
Cell_earplug_vol = 0.3;

_action = player addAction ["<t color='#89E894'>Earplugs</t>", {
	
	if ((hasInterface) && (Cell_earplugs) && (vehicle player == player)) then
	{
		Cell_earplugs = false;
		0 fadeSound Cell_earplug_vol;
		hint "Earplugs IN";
	}
	else 
	{
		
		if (vehicle player != player) then {
			0 fadeSound ( desired_vehvolume / 100.0 );
			hint "Using vehicle sound level";
		}
		else
		{
			Cell_earplugs = true;
			0 fadeSound 1;
			hint "Earplugs OUT";
		};
	};

},{},6];

waitUntil {sleep 1; !(alive player)};
player removeAction _action;
0 fadeSound 1;

waitUntil {sleep  1; (alive player)};

[] execVM "earplugs.sqf";