private ["_updateType"];
_updateType = [_this, 0, 0, [0]] call BIS_fnc_param; // 1 - view, 2 - obj, 3 - both, 4 - FOV, 0 - both and terrain

/*
	For Init file:
	
	//Initialize variable with 300m as minimum distance
	missionNamespace setVariable ["Custom_CHVD_MinDistance", 300];

	To change minimum in game to 900m, run following on SERVER (not local):
	Custom_CHVD_MinDistance = 900;
*/

//Setting Min Stuff
if (CHVD_foot < Custom_CHVD_MinDistance) then {CHVD_foot = Custom_CHVD_MinDistance;};
if (CHVD_car < Custom_CHVD_MinDistance) then {CHVD_car = Custom_CHVD_MinDistance;};
if (CHVD_air < Custom_CHVD_MinDistance) then {CHVD_air = Custom_CHVD_MinDistance;};
if (CHVD_footObj < Custom_CHVD_MinDistance) then {CHVD_footObj = Custom_CHVD_MinDistance;};
if (CHVD_carObj < Custom_CHVD_MinDistance) then {CHVD_carObj = Custom_CHVD_MinDistance;};
if (CHVD_airObj < Custom_CHVD_MinDistance) then {CHVD_airObj = Custom_CHVD_MinDistance;};

switch (_updateType) do {
	case 1: {
		switch (CHVD_vehType) do {
			case 0: {setViewDistance CHVD_foot};
			case 1: {setViewDistance CHVD_car};
			case 2: {setViewDistance CHVD_air};
		};
	};
	case 2: {
		switch (CHVD_vehType) do {
			case 0: {setObjectViewDistance CHVD_footObj};
			case 1: {setObjectViewDistance CHVD_carObj};
			case 2: {setObjectViewDistance CHVD_airObj};
		};
	};
	case 4: {
		switch (CHVD_vehType) do {
			case 0: {setObjectViewDistance ([CHVD_footObj] call CHVD_fnc_fovViewDistance)};
			case 1: {setObjectViewDistance ([CHVD_carObj] call CHVD_fnc_fovViewDistance)};
			case 2: {setObjectViewDistance ([CHVD_airObj] call CHVD_fnc_fovViewDistance)};
		};
	};
	default {
		switch (CHVD_vehType) do {
			case 0: {setViewDistance CHVD_foot; setObjectViewDistance CHVD_footObj};
			case 1: {setViewDistance CHVD_car; setObjectViewDistance CHVD_carObj};
			case 2: {setViewDistance CHVD_air; setObjectViewDistance CHVD_airObj};
		};
	};
};

if (_updateType isEqualTo 0) then {
	[] call CHVD_fnc_updateTerrain;
};