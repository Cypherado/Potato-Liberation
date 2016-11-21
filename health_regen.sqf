private ["_newDamage","_t"];
while {alive player} do 
{
	_t = time;
	waitUntil {time - _t > 1};
	if (damage player < 0.3) then 
		{
		_newDamage = (damage player) - 0.1;
		player setdamage _newDamage;
		};
	sleep 5;
};

waitUntil{alive player};
sleep 0.5;
[player] execVM "health_regen.sqf";