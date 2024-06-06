scoreboard players operation diff rotation = current rotation
execute store result score current rotation run data get entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0]
scoreboard players operation diff rotation -= current rotation

execute if score timer timer matches 60..300 if score diff rotation matches 2.. run scoreboard players add cw rotation 1
execute if score timer timer matches 60..300 if score diff rotation matches ..-2 run scoreboard players add ccw rotation 1