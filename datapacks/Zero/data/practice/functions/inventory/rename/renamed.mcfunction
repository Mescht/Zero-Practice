execute in minecraft:the_end unless data block 136 66 3 {Text4:'{"text":""}'} run data modify storage practice:loadouts loadouts[{selected:1b}].name set from block 136 66 3 Text4
execute in minecraft:the_end unless data block 136 66 3 {Text3:'{"text":""}'} run data modify storage practice:loadouts loadouts[{selected:1b}].name set from block 136 66 3 Text3
execute in minecraft:the_end unless data block 136 66 3 {Text2:'{"text":""}'} run data modify storage practice:loadouts loadouts[{selected:1b}].name set from block 136 66 3 Text2
execute in minecraft:the_end unless data block 136 66 3 {Text1:'{"text":""}'} run data modify storage practice:loadouts loadouts[{selected:1b}].name set from block 136 66 3 Text1

scoreboard players reset renaming flags

execute in minecraft:the_end run setblock 136 66 4 oak_wall_sign[facing=south]
execute in minecraft:the_end run setblock 136 66 3 minecraft:oak_wall_sign[facing=north]

execute in minecraft:the_end run data remove block 136 66 3 Text1
execute in minecraft:the_end run data modify block 136 66 3 Text2 set value '{"nbt":"loadouts[{selected:1b}].name","storage":"practice:loadouts","interpret":"true","color":"gold"}'
execute in minecraft:the_end run data merge block 136 66 3 {Text3:'{"text":"[Edit]","color":"gold","clickEvent":{"action":"run_command","value":"function practice:inventory/edit_loadout"}}'}
