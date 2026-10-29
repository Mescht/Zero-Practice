scoreboard players operation spawn_act settings = spawn settings

# radnom
execute if score spawn settings matches 8 run scoreboard players set mod rng 3
execute if score spawn settings matches 8 run function practice:random/generate
execute if score spawn settings matches 8 run scoreboard players operation spawn_act settings = r rng

# random cage
execute if score spawn_act settings matches 2 run function practice:level/load_random_cage

execute if score natural_terrain settings matches 0 run function natural_end:apply
execute unless score natural_terrain settings matches 0 run function practice:level/load_spawn_structure