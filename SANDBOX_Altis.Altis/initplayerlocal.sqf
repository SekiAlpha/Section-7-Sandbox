["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
missionNamespace setVariable ["BIS_respSpecAI", true]; 					// Allow spectating of AI
missionNamespace setVariable ["BIS_respSpecAllowFreeCamera", false]; 	// Allow moving the camera independent from units (players)
missionNamespace setVariable ["BIS_respSpecAllow3PPCamera", true];		// Allow 3rd person camera
missionNamespace setVariable ["BIS_respSpecShowFocus", true];			// Show info about the selected unit (dissapears behind the respawn UI)
missionNamespace setVariable ["BIS_respSpecShowCameraButtons", true];	// Show buttons for switching between free camera, 1st and 3rd person view (partially overlayed by respawn UI)
missionNamespace setVariable ["BIS_respSpecShowControlsHelper", true];	// Show the controls tutorial box
missionNamespace setVariable ["BIS_respSpecShowHeader", true];			// Top bar of the spectator UI including mission time
missionNamespace setVariable ["BIS_respSpecLists", true];				// Show list of available units and locations on the left hand side