# Zero-Practice
Map for practicing Zero Cycles in Minecraft Speedruns

## Info
If you break something in the lobby type `/trigger repair` to fix it

Only [certain blocks](https://github.com/Mescht/Zero-Practice/blob/main/datapacks/Zero/data/practice/tags/blocks/remove.json) get removed from the map automaticaly. If you want additional blocks to be removed you can add those to the list found at `datapacks/Zero/data/practice/tags/blocks/remove.json` in the world folder.

## Features
- Control over Tower Type and Location
- Multiple Customizable Loadouts _(you can rename loadouts by holding shift while clicking the sign)_
- Control over Dragon Rotation
- Damage and Knockback Display
- Inventory Randomizer
- Control over Spawn and Saturation
  
... and more

## Transfer Loadouts to new Version

To tranfer your loadouts copy the file `data\command_storage_zero_practice_loadouts.dat` from the old map the the new one.

⚠️ If you are upgrading from a version before 1.2.2 you need to first run the following command to create this file:
`/data modify storage zero_practice_loadouts:loadouts {} merge from storage practice:loadouts`
