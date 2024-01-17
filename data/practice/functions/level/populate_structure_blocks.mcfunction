# load path from top element in stack
data modify block ~ 68 ~ name set from storage practice:towers stack[0].structures[0]

# pop top element from stack
data remove storage practice:towers stack[0]

# loop
scoreboard players remove @e[tag=tower] tower_order 1
execute as @e[scores={tower_order=0}] at @s run function practice:level/populate_structure_blocks