// TRUE is IN
// FALSE is OUT
// Earplugs vars are now in init_client.sqf to fix the revive issue and will now persist through death.

if (Cell_earplugs) then {hint "Earplugs: IN"};

_action = player addAction ["<t color='#89E894'>Earplugs</t>", {
	
	if ((hasInterface) && !(Cell_earplugs) && (vehicle player == player)) then
	{
		hint "Earplugs: IN";
		0 fadeSound Cell_earplug_vol;
		Cell_earplugs = true;
	}
	else 
	{		
		if (vehicle player != player) then {
			0 fadeSound ( desired_vehvolume / 100.0 );
			hintSilent "Earplugs: Using vehicle sound level";
		}
		else
		{
			0 fadeSound 1;
			hint "Earplugs: OUT";
			Cell_earplugs = false;
		};
	};

},{},6];

waitUntil {sleep 1; !(alive player)};
player removeAction _action;

waitUntil {sleep  1; (alive player)};

[] execVM "earplugs.sqf";