# get values for location (front / back)
scoreboard players operation location_act settings = location settings
execute if score location settings matches 2 run scoreboard players set location_act settings 0
execute if score location settings matches 2 if predicate practice:rand_50 run scoreboard players set location_act settings 1

# get values for direction (digaonal / straight)
scoreboard players operation direction_act settings = direction settings
execute if score direction settings matches 2 run scoreboard players set direction_act settings 0
execute if score direction settings matches 2 if predicate practice:rand_12.5 run scoreboard players set direction_act settings 1

function practice:level/load_spawn
function practice:level/choose_tower
function practice:level/set_tower_order
function practice:level/load_towers
function practice:nodes/force

# spawn dragon
execute in minecraft:the_end run summon minecraft:ender_dragon 0 128 0 {DragonPhase:0b}
# give dragon random rotation
#execute as @e[type=minecraft:ender_dragon,limit=1] store result entity @s Rotation[0] float 1 run data get entity @s UUID[0]
#execute as @e[type=minecraft:ender_dragon,limit=1] store result entity @s Rotation[0] float 1 run data get entity @s UUID[0]

#set rotation (cw / ccw)
scoreboard players operation rotation_act settings = rotation settings
execute if score rotation settings matches 2 run scoreboard players set rotation_act settings 0
execute if score rotation settings matches 2 if predicate practice:rand_50 run scoreboard players set rotation_act settings 1
#diag front
execute if score rotation_act settings matches 0 if score location_act settings matches 0 if score direction_act settings matches 0 run data modify entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] set value 0.0f
execute if score rotation_act settings matches 1 if score location_act settings matches 0 if score direction_act settings matches 0 run data modify entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] set value 90.0f
#straing front
execute if score rotation_act settings matches 0 if score location_act settings matches 0 if score direction_act settings matches 1 run data modify entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] set value 135.0f
execute if score rotation_act settings matches 1 if score location_act settings matches 0 if score direction_act settings matches 1 run data modify entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] set value 45.0f
#diag back
execute if score rotation_act settings matches 0 if score location_act settings matches 1 if score direction_act settings matches 0 run data modify entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] set value 180.0f
execute if score rotation_act settings matches 1 if score location_act settings matches 1 if score direction_act settings matches 0 run data modify entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] set value 270.0f
#straing back
execute if score rotation_act settings matches 0 if score location_act settings matches 1 if score direction_act settings matches 1 run data modify entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] set value 315.0f
execute if score rotation_act settings matches 1 if score location_act settings matches 1 if score direction_act settings matches 1 run data modify entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] set value 225.0f

# save loadout if still editing
execute if score editing_loadout flags matches 1 run function practice:inventory/save_loadout

# prepare player
tp @a 100 49 0 90 0
gamemode survival @a
execute as @a run function practice:inventory/loadinv
effect clear @a
effect give @a minecraft:instant_health 10 10 true
#effect give @a minecraft:saturation 10 10 true

# reset timer and flags
scoreboard players set timer timer 0
scoreboard players set active timer 1
scoreboard players set in_lobby flags 0
scoreboard players set explosives stats 0

fill -2 60 2 2 60 -2 air replace minecraft:end_portal
bossbar set minecraft:dragon visible true
title @a times 5 15 5

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