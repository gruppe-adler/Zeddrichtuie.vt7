if (!isServer) exitWith {};

private _objectsToExtract =
((getMissionLayerEntities "units_phase1_nassau")#0) +
((getMissionLayerEntities "units_phase2_ww1")#0) +
((getMissionLayerEntities "units_phase3_ww2")#0) +
((getMissionLayerEntities "units_phase4_70s")#0) +
((getMissionLayerEntities "units_phase5_today")#0) +
((getMissionLayerEntities "units_phase6_2050")#0) +
((getMissionLayerEntities "units_phase7_starwars")#0);

{
    _x hideObjectGlobal true;
    _x enableSimulationGlobal false;
} forEach _objectsToExtract;



[{
    [] call GRAD_Z_main_fnc_getCurrentPhase == 0
},{

    private _objectsToUnhide = 
    ((getMissionLayerEntities "units_phase1_nassau")#0);
    {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    } forEach _objectsToUnhide;
}] call CBA_fnc_waitUntilAndExecute;


[{
    [] call GRAD_Z_main_fnc_getCurrentPhase == 1
},{

    private _objectsToUnhide = 
    ((getMissionLayerEntities "units_phase2_ww1")#0);
    {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    } forEach _objectsToUnhide;
}] call CBA_fnc_waitUntilAndExecute;


[{
    [] call GRAD_Z_main_fnc_getCurrentPhase == 2
},{

    private _objectsToUnhide = 
    ((getMissionLayerEntities "units_phase3_ww2")#0);
    {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    } forEach _objectsToUnhide;
}] call CBA_fnc_waitUntilAndExecute;


[{
    [] call GRAD_Z_main_fnc_getCurrentPhase == 3
},{

    private _objectsToUnhide = 
    ((getMissionLayerEntities "units_phase4_70s")#0);
    {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    } forEach _objectsToUnhide;
}] call CBA_fnc_waitUntilAndExecute;


[{
    [] call GRAD_Z_main_fnc_getCurrentPhase == 4
},{

    private _objectsToUnhide = 
    ((getMissionLayerEntities "units_phase5_today")#0);
    {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    } forEach _objectsToUnhide;
}] call CBA_fnc_waitUntilAndExecute;


[{
    [] call GRAD_Z_main_fnc_getCurrentPhase == 5
},{

    private _objectsToUnhide = 
    ((getMissionLayerEntities "units_phase6_2050")#0);
    {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    } forEach _objectsToUnhide;
}] call CBA_fnc_waitUntilAndExecute;



[{
    [] call GRAD_Z_main_fnc_getCurrentPhase == 6
},{

    private _objectsToUnhide = 
    ((getMissionLayerEntities "units_phase7_starwars")#0);
    {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    } forEach _objectsToUnhide;
}] call CBA_fnc_waitUntilAndExecute;