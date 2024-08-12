kill @e[type=#practice:remove]

# player
execute in minecraft:the_end run tp @a 135 65 0 90 0
clear @a
effect give @a minecraft:instant_health 10 10 true
effect give @a[scores={death=1..}] minecraft:hunger 1 255
stopsound @a

function practice:level/clear

# reset scores
scoreboard players set active timer 0
scoreboard players reset * reset
scoreboard players reset * reset_drop
scoreboard players reset * death
scoreboard players reset * height
scoreboard players set in_lobby flags 1
scoreboard players reset flying_to_fountain flags

bossbar set minecraft:dragon visible false
advancement revoke @a only minecraft:end/kill_dragon

tellraw @a {"text":""}

execute as @a[nbt=!{Fire:-20s}] at @s run function practice:extinguish

difficulty peaceful