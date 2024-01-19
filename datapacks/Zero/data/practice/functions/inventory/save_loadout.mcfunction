# store inventory
execute as @p run function practice:inventory/storeinv

# copy data to selected loadout
data modify storage practice:loadouts loadouts[{selected:1b}] set from storage practice:loadouts selected

# edit sign data
data merge block 136 66 3 {Text3:'{"text":"[Edit]","color":"gold","clickEvent":{"action":"run_command","value":"function practice:inventory/edit_loadout"}}'}

clear @a
gamemode survival @a

execute as @a at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1

scoreboard players reset editing_loadout flags