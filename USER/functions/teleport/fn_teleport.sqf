if (!isServer) exitWith {};

params ["_unit", "_position", "_index", ["_duration", 10], ["_numberStart", 2035], ["_numberEnd", 9]];

/* // todo readd for release
if (!isNull (getAssignedCuratorLogic _unit)) exitWith {
    diag_log "curator detected, exiting teleport";
};
*/

// debug
// server knows current position than players in the future
// all players want to see the effect, therefore execute everywhere
[_unit, getPos _unit, _position, _index, _duration, _numberStart, _numberEnd] remoteExec ["GRAD_Z_teleport_fnc_teleportFX", 0];
