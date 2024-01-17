# load inventory
function practice:inventory/loadinv

# edit sign data
data merge block 136 65 2 {Text2:'{"text":"Save Loadout","color":"green","clickEvent":{"action":"run_command","value":"function practice:inventory/save_loadout"}}'}

gamemode creative @a

execute as @a at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1

scoreboard players set editing_loadout flags 1