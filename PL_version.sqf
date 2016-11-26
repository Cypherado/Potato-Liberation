if (isDedicated) then { exit };

player createDiarySubject ["PL Version","PL Version"];
player createDiaryRecord ["PL Version", ["1.2.2", format ["Added a diary record for the changelog and current version."]]];
player createDiaryRecord ["PL Version", ["Current Version", format ["<font color='#ff8000'>Current version: </font> %1", localize "STR_MISSION_VERSION"]]];