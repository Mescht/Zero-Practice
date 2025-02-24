tellraw @a[tag=debug] {"text":"[DEBUG] Crystal Damage Simulated","color":"dark_purple"}

scoreboard players operation crystal health = current health
scoreboard players remove crystal health 10
scoreboard players operation crystal health += diff health

execute if score crystal health matches ..0 run data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 9
execute if score crystal health matches ..0 run scoreboard players set phase stats 9
execute if score crystal health matches ..0 run scoreboard players set crystal health 1

execute if score diff health matches ..9 store result entity @e[type=minecraft:ender_dragon,limit=1] Health short 1 run scoreboard players get crystal health 

tellraw @a[tag=debug] [{"text":"[DEBUG] damage without crystal was ","color":"dark_purple"},{"score":{"name":"diff","objective":"health"}}]

execute if score diff health matches ..9 run scoreboard players operation current health = crystal health
execute if score diff health matches ..9 run scoreboard players set diff health 10