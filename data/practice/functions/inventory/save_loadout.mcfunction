# store inventory
execute as @p run function practice:inventory/storeinv

# edit sign data
data merge block 136 65 2 {Text2:'{"text":"Edit Loadout","color":"gold","clickEvent":{"action":"run_command","value":"function practice:inventory/edit_loadout"}}'}

clear @a
gamemode survival @a

execute as @a at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1

scoreboard players reset editing_loadout flags