kill @e[type=#practice:remove]

# player
execute in minecraft:the_end run tp @a 135 65 0 90 0
execute if score onecycle flags matches 1 in minecraft:the_end run tp @a 135 65 0 90 -20
clear @a
effect clear @a
effect give @a minecraft:instant_health 10 10 true
effect give @a[scores={death=1..}] minecraft:hunger 1 255
stopsound @a
gamemode survival @a

function practice:level/clear

# reset scores
scoreboard players set active timer 0
scoreboard players reset * reset
scoreboard players reset * reset_drop
scoreboard players reset * reset_i_pick
scoreboard players reset * reset_g_pick
scoreboard players reset * death
scoreboard players reset * height
scoreboard players reset * pearl
scoreboard players set in_lobby flags 1
scoreboard players reset onecycle flags
scoreboard players reset flying_to_fountain flags

bossbar set minecraft:dragon visible false
advancement revoke @a only minecraft:end/kill_dragon

tellraw @a {"text":""}

execute as @a[nbt=!{Fire:-20s}] at @s run function practice:extinguish/extinguish

difficulty peaceful

kill @e[tag=dragon_pos]
kill @e[type=armor_stand,tag=healing]
kill @e[tag=save]

setblock 0 73 0 air