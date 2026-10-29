tag @e[tag=tower] remove left
tag @e[tag=tower] remove right
execute if score location_act settings matches 0 if score direction_act settings matches 0 run tag @e[tag=tower,name=Tower2] add left
execute if score location_act settings matches 0 if score direction_act settings matches 0 run tag @e[tag=tower,name=Tower0] add right
execute if score location_act settings matches 0 if score direction_act settings matches 1 run tag @e[tag=tower,name=Tower1] add left
execute if score location_act settings matches 0 if score direction_act settings matches 1 run tag @e[tag=tower,name=Tower9] add right
execute if score location_act settings matches 1 if score direction_act settings matches 0 run tag @e[tag=tower,name=Tower7] add left
execute if score location_act settings matches 1 if score direction_act settings matches 0 run tag @e[tag=tower,name=Tower5] add right
execute if score location_act settings matches 1 if score direction_act settings matches 1 run tag @e[tag=tower,name=Tower6] add left
execute if score location_act settings matches 1 if score direction_act settings matches 1 run tag @e[tag=tower,name=Tower4] add right

scoreboard players operation left tower_order = tower_left settings
scoreboard players remove left tower_order 1
scoreboard players operation right tower_order = tower_right settings
scoreboard players remove right tower_order 1
execute if score left tower_order = tower settings run scoreboard players set left tower_order -1
execute if score right tower_order = tower settings run scoreboard players set right tower_order -1
execute if score right tower_order = left tower_order run scoreboard players set right tower_order -1

execute if score left tower_order matches 0.. run tag @e[tag=tower,tag=left] add selected
execute if score left tower_order matches 0.. run scoreboard players operation @e[tag=tower,tag=left] tower_order = left tower_order
execute if score right tower_order matches 0.. run tag @e[tag=tower,tag=right] add selected
execute if score right tower_order matches 0.. run scoreboard players operation @e[tag=tower,tag=right] tower_order = right tower_order
