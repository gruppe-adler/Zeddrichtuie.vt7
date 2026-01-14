
if (!hasInterface) exitWith {};

[{
    lifeState player == "INCAPACITATED"
}, {
    player allowDamage false;
    ["GRAD_Z_curatorInfo", [player, "unconscious"]] call CBA_fnc_serverEvent;

    [{
        lifeState player != "INCAPACITATED"
    }, {
        player allowDamage true;
        [] spawn GRAD_Z_common_fnc_checkLifeState;
        ["GRAD_Z_curatorInfo", [player, "revived"]] call CBA_fnc_serverEvent;
        
    }] call CBA_fnc_waitUntilAndExecute;
}] call CBA_fnc_waitUntilAndExecute;
