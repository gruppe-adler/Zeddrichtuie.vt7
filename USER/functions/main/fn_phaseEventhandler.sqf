if (!isServer) exitWith {};

["GRAD_Z_phaseControl", {
    params ["_phase", "_phaseStep"];

    private _phaseOriginal = missionNamespace getVariable ["GRAD_Z_portalPhase", []];
    (_phaseOriginal select 1 select _phase) set [0, _phaseStep];
    _phaseOriginal set [0, _phase];

     // phase change to next phase
    if (_phaseStep == call GRAD_Z_main_fnc_getPhaseMaxProgress) then {
        _phaseOriginal set [0, (_phase + 1)];
        ["GRAD_Z_curatorInfo",[objNull, "phasechange"]] call CBA_fnc_serverEvent;
    };

    missionNamespace setVariable ["GRAD_Z_portalPhase", _phaseOriginal, true];


    playSound3D [getMissionPath "USER\sounds\teleport_global.ogg", getPos ((switchableUnits + playableUnits) select 0)];
    private _duration = 38;
    private _dates = [_phase] call GRAD_Z_main_fnc_getPhaseDates;
    private _numberStart = _dates select 0;
    private _numberEnd = _dates select 1;
    private _count = count (playableUnits + switchableUnits);
    {
        [{
            params ["_unit", "_targetposition", "_index", "_duration", "_numberStart", "_numberEnd"];

            [_unit, _targetposition, _index, _duration, _numberStart, _numberEnd] call GRAD_Z_teleport_fnc_teleport;
            // systemChat ("teleporting unit " + str _index);
        }, [_x, ([_phase] call GRAD_Z_main_fnc_getCurrentTeleportTarget), _forEachIndex, _duration, _numberStart, _numberEnd], 
        ((_forEachIndex/_count) max 1)+((random 1) max 0.25)] call CBA_fnc_waitAndExecute;

    } forEach playableUnits + switchableUnits;

}] call CBA_fnc_addEventHandler;

/*
["GRAD_Z_loadoutControl", {
    params ["_player"];

    [_player] call GRAD_Loadout_fnc_doLoadoutForUnit;

}] call CBA_fnc_addEventHandler;
*/

/*

private _GRAD_Z_portalPhase = [
      0,
      [
        [0,4],
        [0,4],
        [0,4],
        [0,4]
      ]
    ];

*/
