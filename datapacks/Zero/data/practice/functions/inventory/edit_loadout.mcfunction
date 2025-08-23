scoreboard players set editing_loadout flags 1

# load inventory
function practice:inventory/loadinv

# edit sign data
data merge block 136 66 3 {Text3:'{"text":"[Save]","color":"green","clickEvent":{"action":"run_command","value":"execute if score @s time_since_death > *threshold time_since_death run function practice:inventory/save_loadout"}}'}

gamemode creative @a

execute as @a at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1
