# save loadout if still editing
execute if score editing_loadout flags matches 1 run function practice:inventory/save_loadout
execute if score renaming flags matches 1 run function practice:inventory/rename/renamed

# prepare player
execute in minecraft:the_end run spawnpoint @a 135 65 0
gamemode survival @a
execute as @a run function practice:inventory/loadinv
effect clear @a
effect give @a minecraft:instant_health 10 10 true
clear @s writable_book
clear @a glass_pane
execute if score fireres settings matches 0 run effect give @a minecraft:fire_resistance 10000 0

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

difficulty easy

tp @a 0 62 -6 0 0

summon armor_stand 0 100 40 {NoGravity:1b,Tags:["dragon_pos"],Invisible:1b} 

# random height
scoreboard players set mod rng 2000
function practice:random/generate
scoreboard players add r rng 7500
execute store result entity @e[tag=dragon_pos,limit=1] Pos[1] double 0.01 run scoreboard players get r rng

# random rotation
scoreboard players set mod rng 400
function practice:random/generate
scoreboard players remove r rng 150
execute store result entity @e[tag=dragon_pos,limit=1] Pos[0] double 0.01 run scoreboard players get r rng

execute if score disable_dragon settings matches 0 as @e[tag=dragon_pos] at @s run summon minecraft:ender_dragon ~ ~ ~ {DragonPhase:3b}
kill @e[tag=dragon_pos]

# load fountain
setblock 0 73 0 structure_block{posX:-12, posY:-15, posZ:-12, mode: "LOAD", name: "practice:fountain_setup"}
setblock 0 74 0 minecraft:redstone_block
fill 0 73 0 0 74 0 minecraft:air

scoreboard players set onecycle flags 1