["Zeddrichtuie - Teleports", "Teleport 1", {
     params ["_position", "_object"];

    [{
        ["GRAD_Z_phaseControl", [0, 1]] call CBA_fnc_serverEvent;
    }, [], 2] call CBA_fnc_waitAndExecute;
}] call zen_custom_modules_fnc_register;

["Zeddrichtuie - Teleports", "Teleport 2", {
     params ["_position", "_object"];

    [{
        ["GRAD_Z_phaseControl", [1, 2]] call CBA_fnc_serverEvent;
    }, [], 2] call CBA_fnc_waitAndExecute;
}] call zen_custom_modules_fnc_register;
