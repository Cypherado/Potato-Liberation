if (isDedicated) then { exit };

player createDiarySubject ["PL Version","PL Version"];
// PLEASE ADD NEW ENTRIES TO THE TOP OF THE STACK. ENTRIES ARE LISTED IN GAME REVERSE ORDER.
// HERE
player createDiaryRecord ["PL Version", ["1.2.1", format ["Modified: Zeus should no longer ruin the immersion of others when he respawns (Ascended notification).<br/><br/>Fixed: Earplugs will now actually respect the user's in-vehicle sound volume and remember their state from before getting in."]]];
player createDiaryRecord ["PL Version", ["1.2.2", format ["Added: A diary record for the changelog and current version."]]];
player createDiaryRecord ["PL Version", ["Current Version", format ["<font color='#ff8000'>Current version: </font> %1", localize "STR_MISSION_VERSION"]]];