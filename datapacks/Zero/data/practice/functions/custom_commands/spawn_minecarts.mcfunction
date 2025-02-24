summon minecraft:command_block_minecart 0 3 0
data modify entity @e[type=minecraft:command_block_minecart,tag=!done,limit=1] Command set from storage practice:loadouts commands[0]
tag @e[type=minecraft:command_block_minecart] add done
data remove storage practice:loadouts commands[0]

execute if data storage practice:loadouts commands[0] run function practice:custom_commands/spawn_minecarts