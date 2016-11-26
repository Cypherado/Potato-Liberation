if (isDedicated) then { exit };

player createDiarySubject ["PL Version","PL Version"];
// PLEASE ADD NEW ENTRIES TO THE TOP OF THE STACK. ENTRIES ARE LISTED IN GAME REVERSE ORDER.
// HERE

player createDiaryRecord ["PL Version", ["1.3", format ["* Modified: Removed most vanilla vehicles<br/><br/>* Modified: Major RHS overhaul<br/><br/>* Fixed: Texan is now 100 ammo 30 fuel to reflect same cost as Buzzard (CAS)<br/><br/>* Modified: Zeus should no longer ruin the immersion of others when he respawns (Ascended notification).<br/><br/>* Fixed: Earplugs will now actually respect the user's in-vehicle sound volume and remember their state from before getting in.<br/><br/>* Added: Journal entries for current and past versions."]]];
player createDiaryRecord ["PL Version", ["Current Version", format ["<font color='#ff8000'>Current version: </font> %1", localize "STR_MISSION_VERSION"]]];