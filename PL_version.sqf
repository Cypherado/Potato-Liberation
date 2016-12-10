if (isDedicated) then { exit };

player createDiarySubject ["PL Version","PL Version"];
// PLEASE ADD NEW ENTRIES IN DESCENDING ORDER

player createDiaryRecord ["PL Version", ["1.3", format ["* Modified: Removed most vanilla vehicles<br/><br/>
* Modified: Major RHS overhaul<br/><br/>
* Fixed: Texan is now 100 ammo 30 fuel to reflect same cost as Buzzard (CAS)<br/><br/>
* Modified: Zeus should no longer ruin the immersion of others when he respawns (Ascended notification).<br/><br/>
* Fixed: Earplugs will now actually respect the user's in-vehicle sound volume and remember their state from before getting in.<br/><br/>
* Added: Journal entries for current and past versions."]]];

player createDiaryRecord ["PL Version", ["1.3.1", format ["* Modified: Vehicle values have been adjusted. No more 50 ammo Apaches and
captured vehicles now give worthwhile rewards.<br/><br/>
* Added: Transport HEMTT added to Light Vehicle list
<br/><br/>
* Fixed: Earplugs state fix for revive and respawn.
<br/><br/>
* Modified: Lowered chance for enemy vehicle to blow up on crew ejecting.
<br/><br/>
* Modified: Increased Civ Kill Penalty to 100 from 10.<br/><br/>
* Modified: Towns now only require 9 enemies left remaining instead of 3 to be
capped.<br/><br/>
* Fixed: Paratroopers should no longer splat into the ground."]]];

player createDiaryRecord ["PL Version", ["1.3.2", format ["* Fixed: Finally fixed the revive/earplug state issue.<br/><br/>
* Modified: Increased number of AI that need to be killed before a sector caps."]]];

player createDiaryRecord ["PL Version", ["1.3.3", format ["* Changed: FOB Truck changed to RHS MHQ truck<br/><br/>
* Changed: Huron replaced with RHS CH-47<br/><br/>
* Changed: Stun grenades are blacklisted<br/><br/>
* Added: Wall and Tent Hangar to buildable objects<br/><br/>
* Added: RHS MH-6M<br/><br/>
* Fixed (?): UAV bug"]]];

player createDiaryRecord ["PL Version", ["1.3.3 VAN", format ["* Reverted to Vanilla Units for testing stability."]]];

player createDiaryRecord ["PL Version", ["Current Version", format ["<font color='#ff8000'>Current version: </font> %1", localize "STR_MISSION_VERSION"]]];
