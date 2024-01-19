data modify storage practice:loadouts loadouts[{selected:1b}].name set value '[{"text":"","color":"gold"},{}]'
data modify storage practice:loadouts loadouts[{selected:1b}].name set from block 136 66 3 Text1
scoreboard players reset renaming flags

setblock 136 66 4 oak_wall_sign[facing=south]

data remove block 136 66 3 Text1
data modify block 136 66 3 Text2 set value '{"nbt":"loadouts[{selected:1b}].name","storage":"practice:loadouts","interpret":"true","color":"gold"}'
data merge block 136 66 3 {Text3:'{"text":"[Edit]","color":"gold","clickEvent":{"action":"run_command","value":"function practice:inventory/edit_loadout"}}'}
