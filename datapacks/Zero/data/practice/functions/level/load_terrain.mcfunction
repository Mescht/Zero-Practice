execute as @e[tag=tower,name=Tower0] at @s run data modify block ~ 68 ~ name set value "practice:terrain/0"
execute as @e[tag=tower,name=Tower1] at @s run data modify block ~ 68 ~ name set value "practice:terrain/1"
execute as @e[tag=tower,name=Tower2] at @s run data modify block ~ 68 ~ name set value "practice:terrain/2"
execute as @e[tag=tower,name=Tower3] at @s run data modify block ~ 68 ~ name set value "practice:terrain/3"
execute as @e[tag=tower,name=Tower4] at @s run data modify block ~ 68 ~ name set value "practice:terrain/4"
execute as @e[tag=tower,name=Tower5] at @s run data modify block ~ 68 ~ name set value "practice:terrain/5"
execute as @e[tag=tower,name=Tower6] at @s run data modify block ~ 68 ~ name set value "practice:terrain/6"
execute as @e[tag=tower,name=Tower7] at @s run data modify block ~ 68 ~ name set value "practice:terrain/7"
execute as @e[tag=tower,name=Tower8] at @s run data modify block ~ 68 ~ name set value "practice:terrain/8"
execute as @e[tag=tower,name=Tower9] at @s run data modify block ~ 68 ~ name set value "practice:terrain/9"

# activate structure blocks
execute as @e[tag=tower] at @s run setblock ~ 67 ~ minecraft:redstone_block
execute as @e[tag=tower] at @s run setblock ~ 67 ~ minecraft:air
execute as @e[tag=tower] at @s run setblock ~ 68 ~ minecraft:air

# force lowest node height
fill 28 60 -29 28 58 -29 air
fill -29 59 28 -20 58 28 air

schedule function practice:level/refill_nodes 2t