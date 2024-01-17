scoreboard players operation crystals_last stats = crystals stats
scoreboard players set crystals stats 0
execute as @e[type=minecraft:end_crystal] run scoreboard players add crystals stats 1

execute if score crystals stats < crystals_last stats run tellraw @a {"text":"Crystal Destroyed","color":"red"}