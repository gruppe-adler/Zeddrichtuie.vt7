["Zeddrichtuie - Teleports", "Teleport 1 - Nassau", {
     params ["_position", "_object"];

    [{
        ["GRAD_Z_phaseControl", [0, 0]] call CBA_fnc_serverEvent;
    }, [], 2] call CBA_fnc_waitAndExecute;
}] call zen_custom_modules_fnc_register;

["Zeddrichtuie - Teleports", "Teleport 2 - WW1", {
     params ["_position", "_object"];

    [{
        ["GRAD_Z_phaseControl", [1, 0]] call CBA_fnc_serverEvent;
    }, [], 2] call CBA_fnc_waitAndExecute;
}] call zen_custom_modules_fnc_register;

["Zeddrichtuie - Teleports", "Teleport 3 - WW2", {
     params ["_position", "_object"];

    [{
        ["GRAD_Z_phaseControl", [2, 0]] call CBA_fnc_serverEvent;
    }, [], 2] call CBA_fnc_waitAndExecute;
}] call zen_custom_modules_fnc_register;

["Zeddrichtuie - Teleports", "Teleport 4 - 70s", {
     params ["_position", "_object"];

    [{
        ["GRAD_Z_phaseControl", [3, 0]] call CBA_fnc_serverEvent;
    }, [], 2] call CBA_fnc_waitAndExecute;
}] call zen_custom_modules_fnc_register;

["Zeddrichtuie - Teleports", "Teleport 5 - today", {
     params ["_position", "_object"];

    [{
        ["GRAD_Z_phaseControl", [4, 0]] call CBA_fnc_serverEvent;
    }, [], 2] call CBA_fnc_waitAndExecute;
}] call zen_custom_modules_fnc_register;

["Zeddrichtuie - Teleports", "Teleport 6 - 2050", {
     params ["_position", "_object"];

    [{
        ["GRAD_Z_phaseControl", [5, 0]] call CBA_fnc_serverEvent;
    }, [], 2] call CBA_fnc_waitAndExecute;
}] call zen_custom_modules_fnc_register;

["Zeddrichtuie - Teleports", "Teleport 7 - Star Wars", {
     params ["_position", "_object"];

    [{
        ["GRAD_Z_phaseControl", [6, 0]] call CBA_fnc_serverEvent;
    }, [], 2] call CBA_fnc_waitAndExecute;
}] call zen_custom_modules_fnc_register;
