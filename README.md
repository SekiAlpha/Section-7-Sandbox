# Section-7-Sandbox
These are the different Sandboxes that S7 uses for operations. This includes the BLUEFOR, OPFOR, INDI, and CIVI Sandboxes.

# Naming Schema
  The naming schema is used on the S7 server to help track what sandboxes on the main server need to be updated. We use dashes on the mission files to make them human readable.
  SANDBOX_"Version Number"_"Map Version"_"Custom"
  - Version Number: "x-x-x" Major, Minor, Bugfix. One thing to note is that periods in arma are only registered as "%2e".
  - Custom: If the sandbox is not using the default base add a custom name to differetiate your sandbox.
 
# How to make another Sandbox
  1. Download the most up to date Sandbox from the releases tab.
  2. Open the map you want in the Eden editor.
  3. Copy over all assets in 3DEN and paste it into a new map.
  4. Make sure 3DEN is set to not Binarize files.
  5. Open up the new mission file in Windows Explorer.
  6. Add everything from the downloaded mission files into the new mission file except for the mission.sqm.
  7. The last thing you do is open the mission.sqm file and delete the addons in the required addons array.
  8. Rename your mission folder by using the the naming schema.
  9. If sending directly to a server administrator compile the mission into a pbo using PBO Manager or upload the files RAW into github or any file sharing software.

# Compositions folder
Contains compositions that make up the sandbox. Put these in your compositions folder located in your arma 3 profile to gain access to them.
