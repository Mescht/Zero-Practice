execute in minecraft:the_end run summon minecraft:ender_dragon 0.0 128 0.0 {UUID:[I;2068606496,-1918480774,-1456198723,127855351],Tags:["fight_new"],DragonPhase:0b}
execute if entity @e[type=minecraft:ender_dragon,tag=fight_new] in minecraft:the_end positioned 0.0 128 0.0 run kill @e[type=minecraft:ender_dragon,tag=!fight_new,distance=..1]
execute store result entity @e[type=minecraft:ender_dragon,tag=fight_new,limit=1] Rotation[0] float 0.1 run scoreboard players get r rng
tag @e[type=minecraft:ender_dragon,tag=fight_new] remove fight_new
