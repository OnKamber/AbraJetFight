player setVariable["Saved_Loadout",getUnitLoadout player];
5 fadeSound 1;
earplugsout = true;
removeAllActions inCaseofDeath;
removeAllActions theOneTrueName;
inCaseofDeath setVariable ["HasEarplugMenu","hasNoMenu"];
theOneTrueName setVariable ["HasEarplugMenu","hasNoMenu"];
player setVariable ["Has_EPEH_Loop", "Yep"];
(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmKeyPress];
playMusic "";