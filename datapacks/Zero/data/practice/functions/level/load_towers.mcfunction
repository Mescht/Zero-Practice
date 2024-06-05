kill @e[type=end_crystal]

execute as @e[tag=tower] at @s run setblock ~ 68 ~ minecraft:structure_block{mode:"LOAD",posX:1,posY:-10,posZ:1} replace

# load all towers into stack
data modify storage practice:towers stack set from storage practice:towers towers

# load path into all strucutre blocks
execute as @e[scores={tower_order=0}] at @s run function practice:level/populate_structure_blocks
scoreboard players add @e[tag=tower] tower_order 10

# activate strucutre blocks
execute as @e[tag=tower] at @s run setblock ~ 67 ~ minecraft:redstone_block
execute as @e[tag=tower] at @s run setblock ~ 67 ~ minecraft:air

