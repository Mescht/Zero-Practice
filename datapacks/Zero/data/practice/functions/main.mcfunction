# resets
execute as @a[scores={reset=1..}] unless score in_lobby flags matches 1 in minecraft:the_end run function practice:reset
execute as @a[scores={reset_drop=1..}] unless score in_lobby flags matches 1 in minecraft:the_end run function practice:reset
execute as @a[scores={death=1..}] in minecraft:the_end run function practice:reset
scoreboard players reset * reset

# run timer
execute if score timer settings matches 0 if score in_lobby flags matches 0 run function practice:timer/timer

# run gui
execute if score in_lobby flags matches 1 run function practice:gui/main

# dragon health and knockback
function practice:health_display
execute if score knockback settings matches 0 run function practice:knockback_display

# post fight logic
execute store result score phase stats run data get entity @e[type=ender_dragon,limit=1] DragonPhase
execute if score phase stats matches 9 if score diff health matches 1.. run function practice:dragon_killed
execute if score flying_to_fountain flags matches 1 if score phase stats matches 0 run function practice:finish

# crystals
execute if score in_lobby flags matches 0 run function practice:check_crystals

# saturation
execute as @a store result score player saturation run data get entity @s foodSaturationLevel
execute if score saturation settings matches 6 if score player saturation matches ..1 run effect give @a minecraft:saturation 1 0

# first bed placed time
execute as @a[scores={bed_place=1}] if score explosives stats matches 0 run tellraw @a [{"nbt":"time_string","storage":"practice:timeparser","interpret":true},{"text":" 1st Bed Placed","color":"white"}]
scoreboard players set @a[scores={bed_place=1}] bed_place 2

# kill out of map player
execute as @a[gamemode=survival] at @s run kill @s[y=30,dy=-10]

# rename loadout check
execute if score in_lobby flags matches 1 unless score editing_loadout flags matches 1 run function practice:inventory/rename/check

# show nodes
execute if score show_nodes settings matches 0 if score in_lobby flags matches 0 in the_end run function practice:nodes/show
execute if score show_nodes settings matches 1 in the_end run function practice:nodes/show_all

# player in overworld fix
execute in minecraft:overworld positioned 0 0 0 as @a[distance=0..] in minecraft:the_end run tp @s 135 65 0 90 0

# repair lobby
scoreboard players enable @a repair
execute if entity @a[scores={repair=1..}] in minecraft:the_end run function practice:level/repair