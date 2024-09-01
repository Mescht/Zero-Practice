scoreboard players set timer timer 0
scoreboard players set cw rotation 0
scoreboard players set ccw rotation 0
execute in minecraft:the_end run summon minecraft:ender_dragon 0 128 0 {DragonPhase:0b}
execute store result entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] float 0.01 run scoreboard players get set rotation