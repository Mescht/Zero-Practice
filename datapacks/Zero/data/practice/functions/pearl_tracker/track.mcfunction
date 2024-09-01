# check for thrown pearls
scoreboard players operation count_prev pearl = count pearl
execute store result score count pearl if entity @e[type=minecraft:ender_pearl]

execute if score count_prev pearl matches 0 if score count pearl matches 1 run function practice:pearl_tracker/thrown
execute if score count_prev pearl matches 1 if score count pearl matches 0 if score y pearl matches -6000.. run function practice:pearl_tracker/landed

# get pearl coordinates
execute store result score x pearl run data get entity @e[type=minecraft:ender_pearl,limit=1] Pos[0] 100
execute store result score y pearl run data get entity @e[type=minecraft:ender_pearl,limit=1] Pos[1] 100
execute store result score z pearl run data get entity @e[type=minecraft:ender_pearl,limit=1] Pos[2] 100