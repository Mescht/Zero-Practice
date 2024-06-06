# get values for location (front / back)
scoreboard players operation location_act settings = location settings
execute if score location settings matches 2 run scoreboard players set location_act settings 0
execute if score location settings matches 2 if predicate practice:rand_50 run scoreboard players set location_act settings 1

# get values for direction (digaonal / straight)
scoreboard players operation direction_act settings = direction settings
execute if score direction settings matches 2 run scoreboard players set direction_act settings 0
execute if score direction settings matches 2 if predicate practice:rand_12.5 run scoreboard players set direction_act settings 1

function practice:level/load_fountain
function practice:level/load_spawn
function practice:level/choose_tower
function practice:level/set_tower_order
function practice:level/load_towers
function practice:level/load_terrain
function practice:nodes/force

#set rotation (cw / ccw)
scoreboard players operation rotation_act settings = rotation settings
execute if score rotation settings matches 2 run scoreboard players set rotation_act settings 0
execute if score rotation settings matches 2 if predicate practice:rand_50 run scoreboard players set rotation_act settings 1

# get lookup values for spawn rotations
execute if score location_act settings matches 0 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup values[0]
execute if score location_act settings matches 1 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup values[1]
execute if score direction_act settings matches 0 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup temp[0]
execute if score direction_act settings matches 1 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup temp[1]
execute if score rotation_act settings matches 0 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup temp[0]
execute if score rotation_act settings matches 1 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup temp[1]

execute store result score start rng run data get storage practice:rotation_lookup temp[0]
execute store result score mod rng run data get storage practice:rotation_lookup temp[1]
execute store result score size1 rng run data get storage practice:rotation_lookup temp[2]
execute store result score gap rng run data get storage practice:rotation_lookup temp[3]

function practice:random/generate
execute if score r rng > size1 rng run scoreboard players operation r rng += gap rng
scoreboard players operation r rng += start rng
scoreboard players operation r rng %= 3600 c

# spawn dragon
execute if score r rng matches 0..449 in minecraft:the_end run summon minecraft:ender_dragon 0 128 0 {DragonPhase:0b,Rotation:[22.5f,0f]}
execute if score r rng matches 450..899 in minecraft:the_end run summon minecraft:ender_dragon 0 128 0 {DragonPhase:0b,Rotation:[67.5f,0f]}
execute if score r rng matches 900..1349 in minecraft:the_end run summon minecraft:ender_dragon 0 128 0 {DragonPhase:0b,Rotation:[112.5f,0f]}
execute if score r rng matches 1350..1799 in minecraft:the_end run summon minecraft:ender_dragon 0 128 0 {DragonPhase:0b,Rotation:[157.5f,0f]}
execute if score r rng matches 1800..2249 in minecraft:the_end run summon minecraft:ender_dragon 0 128 0 {DragonPhase:0b,Rotation:[202.5f,0f]}
execute if score r rng matches 2250..2699 in minecraft:the_end run summon minecraft:ender_dragon 0 128 0 {DragonPhase:0b,Rotation:[247.5f,0f]}
execute if score r rng matches 2700..3149 in minecraft:the_end run summon minecraft:ender_dragon 0 128 0 {DragonPhase:0b,Rotation:[292.5f,0f]}
execute if score r rng matches 3150..3599 in minecraft:the_end run summon minecraft:ender_dragon 0 128 0 {DragonPhase:0b,Rotation:[337.5f,0f]}

execute store result entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] float 0.1 run scoreboard players get r rng

# save loadout if still editing
execute if score editing_loadout flags matches 1 run function practice:inventory/save_loadout

# prepare player
tp @a 100 49 0 90 0
gamemode survival @a
execute as @a run function practice:inventory/loadinv
effect clear @a
effect give @a minecraft:instant_health 10 10 true
execute if score randomize settings matches 0 run loot give @a loot practice:junk

# reset timer and flags
scoreboard players set timer timer 0
scoreboard players set active timer 1
scoreboard players set in_lobby flags 0
scoreboard players set explosives stats 0
scoreboard players set plus_1 stats 0
scoreboard players set damage_time health 0
scoreboard players reset * rotation

fill -2 60 2 2 60 -2 air replace minecraft:end_portal
bossbar set minecraft:dragon visible true
bossbar set minecraft:dragon players @a
#title @a times 5 15 5
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