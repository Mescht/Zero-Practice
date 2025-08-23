scoreboard players operation loadout inv %= 5 c
execute as @a at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1

# set selected loadout actice
data remove storage zero_practice_loadouts:loadouts loadouts[].selected
execute if score loadout inv matches 0 run data modify storage zero_practice_loadouts:loadouts loadouts[0].selected set value 1b
execute if score loadout inv matches 1 run data modify storage zero_practice_loadouts:loadouts loadouts[1].selected set value 1b
execute if score loadout inv matches 2 run data modify storage zero_practice_loadouts:loadouts loadouts[2].selected set value 1b
execute if score loadout inv matches 3 run data modify storage zero_practice_loadouts:loadouts loadouts[3].selected set value 1b
execute if score loadout inv matches 4 run data modify storage zero_practice_loadouts:loadouts loadouts[4].selected set value 1b

# update sign
data modify block 136 66 3 Text2 set value '{"nbt":"loadouts[{selected:1b}].name","storage":"zero_practice_loadouts:loadouts","interpret":"true","color":"gold"}'

# copy selected loadout into selected
data modify storage zero_practice_loadouts:loadouts selected set from storage zero_practice_loadouts:loadouts loadouts[{selected:1b}]