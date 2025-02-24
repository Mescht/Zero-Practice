setblock 0 0 0 minecraft:redstone_block
setblock 0 1 0 minecraft:activator_rail

data modify storage practice:loadouts commands set from storage practice:loadouts selected.commands

execute if data storage practice:loadouts commands[0] in minecraft:the_end run function practice:custom_commands/spawn_minecarts
schedule function practice:custom_commands/remove 5t