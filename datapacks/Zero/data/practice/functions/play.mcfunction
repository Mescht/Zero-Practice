# set location (front / back)
scoreboard players operation location_act settings = location settings
execute if score location settings matches 2 run scoreboard players set location_act settings 0
execute if score location settings matches 2 if predicate practice:rand_50 run scoreboard players set location_act settings 1

# set direction (digaonal / straight)
scoreboard players operation direction_act settings = direction settings
execute if score direction settings matches 2 run scoreboard players set direction_act settings 0
execute if score direction settings matches 2 if predicate practice:rand_12.5 run scoreboard players set direction_act settings 1

# set rotation (cw / ccw)
scoreboard players operation rotation_act settings = rotation settings
execute if score rotation settings matches 2 run scoreboard players set rotation_act settings 0
execute if score rotation settings matches 2 if predicate practice:rand_50 run scoreboard players set rotation_act settings 1

# load level
function practice:level/load_fountain
function practice:level/load_spawn
function practice:level/choose_tower
function practice:level/set_tower_order
function practice:level/load_towers
function practice:level/load_terrain
function practice:nodes/force

# spawn dragon
schedule function practice:spawn_dragon 1t

# save loadout if still editing
execute if score editing_loadout flags matches 1 run function practice:inventory/save_loadout
execute if score renaming flags matches 1 run function practice:inventory/rename/renamed

# prepare player
execute in minecraft:the_end run spawnpoint @a 135 65 0
schedule function practice:tp_player 1t
gamemode survival @a
execute as @a run function practice:inventory/loadinv
effect clear @a
effect give @a minecraft:instant_health 10 10 true
execute if score randomize settings matches 0 run loot give @a loot practice:junk
clear @a glass_pane

# reset scores
scoreboard players set timer timer 0
scoreboard players set active timer 1
scoreboard players set in_lobby flags 0
scoreboard players set explosives stats 0
scoreboard players set plus_1 stats 0
scoreboard players set damage_time health 0
scoreboard players reset * rotation
scoreboard players reset * bed_place

fill -2 60 2 2 60 -2 air replace minecraft:end_portal
bossbar set minecraft:dragon visible true
bossbar set minecraft:dragon players @a
title @a times 0 10 0

# saturation
scoreboard players operation setpoint saturation = saturation settings
scoreboard players operation setpoint saturation *= 2 c
scoreboard players operation diff saturation = setpoint saturation
scoreboard players operation diff saturation -= player saturation

execute if score diff saturation matches 1..2 run effect give @a minecraft:saturation 1 0
execute if score diff saturation matches 3..4 run effect give @a minecraft:saturation 1 1
execute if score diff saturation matches 5..6 run effect give @a minecraft:saturation 1 2
execute if score diff saturation matches 7..8 run effect give @a minecraft:saturation 1 3
execute if score diff saturation matches 9..10 run effect give @a minecraft:saturation 1 4

difficulty easy