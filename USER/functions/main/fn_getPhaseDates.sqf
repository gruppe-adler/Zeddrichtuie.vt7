params [["_phase", -1]];

private _result = [-10000,10000]; // teleportation dates

switch (_phase) do {
    case 0 : {  // Nassau - from 2025 to 1753
        _result = [-10000, 1753];
    };
    case 1 : {  // WW1 - from 1753 to 1914
        _result = [1753, 1914];
    };
    case 2 : {  // WW2 - from 1914 to 1944
        _result = [1914, 1944];
    };
    case 3 : {  // 70s - from 1944 to 1973
        _result = [1944, 1973];
    };
    case 4 : {  // today - from 1973 to 2025
        _result = [1973, 2025];
    };
    case 5 : {  // 2050 - from 2025 to 2050
        _result = [2025, 2050];
    };
    case 6 : {  // Star Wars - from 2050 to 25000
        _result = [2050, 25000];
    };
    default {};
};

_result