/*
0 - default
1 - opening starts with lightning
2 - move stuff to center
3 - beam and flare/portal
4 - delete stuff
*/

// EXTEND REVIVE BLEEDOUT TO INFINITY
if (isServer) then {

    setTimeMultiplier 0.1;

    // current Phase, max Phase
    private _GRAD_Z_portalPhase = [
      -1,
      [
        [0,4],
        [0,4],
        [0,4],
        [0,4]
      ]
    ];
    missionNamespace setVariable ["GRAD_Z_portalPhase", _GRAD_Z_portalPhase, true];
    // ["BLU_F", "vm_vilematter_phase0", true] call GRAD_Loadout_fnc_FactionSetLoadout;

    // [2500, false] remoteExecCall ["ace_viewdistance_fnc_changeViewDistance", [0, -2] select isMultiplayer];

    // phase 0 loadout
    { 
         _x setUnitLoadout ([_x] call GRAD_Z_main_fnc_getPhaseLoadout);
    } forEach playableUnits + switchableUnits;
    
    

    // todo initial spawn teleport
 
    [{
        time > 1
    },{
        bis_revive_bleedOutDuration = 99999;
        publicVariable "bis_revive_bleedOutDuration";
    }, []] call CBA_fnc_waitUntilAndExecute;

    // NOT NECESSARY I GUESS
    /*
    addMissionEventHandler ["PlayerConnected",
    {
        params ["_id", "_uid", "_name", "_jip", "_owner", "_idstr"];

        private _allObjects = missionNamespace getVariable ["GRAD_Z_scaledObjects", []];
        {
            _x params ["_object", "_scale"];
            _object setObjectScale _scale;
        } forEach _allObjects;
    }];
    */

};


// LOADING SCREEN MASK
if (hasInterface) then {

    "normal" cutText ["", "BLACK FADED", 20];

    ["CBA_loadingScreenDone", {
        [{
            !isGamePaused && isGameFocused
        },{

            [{
                [player] call grad_loadout_fnc_doLoadoutForUnit;
                player setPosWorld (selectRandom ([-1] call GRAD_Z_main_fnc_getCurrentTeleportTarget));
            }, [], 10] call CBA_fnc_waitAndExecute;

            [{
                "normal" cutText ["", "BLACK IN", 5];
                ["GRAD_Z_loadoutControl", [player]] call CBA_fnc_serverEvent;
            }, [], 20] call CBA_fnc_waitAndExecute;

        }, []] call CBA_fnc_waitUntilAndExecute;

    }] call CBA_fnc_addEventHandler;

};
