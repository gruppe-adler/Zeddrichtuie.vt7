params [["_phase", -1]];

private _result = [-10000,10000]; // teleportation dates

switch (_phase) do {
     case -1 : {
        _result = [
            2025,-10000
        ];
    };
    case 0 : {
        _result = [
            -10000,1753
        ];
    };
    case 1 : {
        _result = [
            1753,1944
        ];
    };
    case 2 : {
        _result = [
            1944,1973
        ];
    };
    case 3 : {
        _result = [
            1973,2025
        ];
    };
    case 4 : {
        _result = [
            2025,2050
        ];
    };
    case 5 : {
        _result = [
            2050,25000
        ];
    };
    default {}; 
};

_result