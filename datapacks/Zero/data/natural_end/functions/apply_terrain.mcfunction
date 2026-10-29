forceload add 62 -49 157 48

execute if score natural_tile flags matches 0 run function natural_end:load/open
execute if score natural_tile flags matches 1 run function natural_end:load/overhang
execute if score natural_tile flags matches 3 run function natural_end:load/buried_54
execute if score natural_tile flags matches 4 run function natural_end:load/buried_55
execute if score natural_tile flags matches 5 run function natural_end:load/buried_56
execute if score natural_tile flags matches 6 run function natural_end:load/buried_57
execute if score natural_tile flags matches 7 run function natural_end:load/buried_58

fill 98 48 -2 102 48 2 minecraft:obsidian
fill 98 49 -2 102 51 2 minecraft:air

forceload remove 62 -49 157 48
