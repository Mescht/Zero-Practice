execute if score diff health matches 1.. run scoreboard players operation explosion height = current height
scoreboard players operation last height = current height
execute store result score current height run data get entity @e[type=minecraft:ender_dragon,limit=1] Pos[1] 100

scoreboard players operation knockback height = last height
scoreboard players operation knockback height -= explosion height

scoreboard players operation k_num height = knockback height
scoreboard players operation k_num height /= 100 c
scoreboard players operation k_dec height = knockback height
scoreboard players operation k_dec height %= 100 c

execute if score explosion height matches 1.. if score knockback height matches 1.. if score current height <= last height if score current health matches 2.. run function practice:knockback_display_print