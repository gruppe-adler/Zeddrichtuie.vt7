/*

    gives back array of valid teleport targets

*/

params [["_phase", -1]];

diag_log ("GRAD VM getCurrentTeleportTarget 1: " + str _phase);

if (_phase < 0) then {
    _phase = call GRAD_Z_main_fnc_getCurrentPhase;
    _phase = _phase - 1;
};

diag_log ("GRAD VM getCurrentTeleportTarget 2: " + str _phase);

private _result = [];

switch (_phase) do { 
    case -1 : {
        _result = [
            getPosWorld teleportcenter_phase_start
        ];
    };
    case 0 : {
        _result = [getPosWorld teleportcenter_phase1];
    };
    case 1 : {
        _result = [getPosWorld teleportcenter_phase2];
    };
    case 2 : {
        _result = [getPosWorld teleportcenter_phase3];
    };
    case 3 : {
        _result = [getPosWorld teleportcenter_phase4];
    };
    case 4 : {
        _result = [getPosWorld teleportcenter_phase5];
    };
    case 5 : {
        _result = [getPosWorld teleportcenter_phase6];
    };
    default {}; 
};

_result