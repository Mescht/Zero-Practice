execute if score location_act settings matches 0 run data modify storage practice:info location set value "Front"
execute if score location_act settings matches 1 run data modify storage practice:info location set value "Back"
execute if score direction_act settings matches 0 run data modify storage practice:info direction set value " Diagonal"
execute if score direction_act settings matches 1 run data modify storage practice:info direction set value " Straight"
data modify storage practice:info speed set value ""
execute if score direction_act settings matches 0 if score speed_act settings matches 0 run data modify storage practice:info speed set value " Fast"
execute if score direction_act settings matches 0 if score speed_act settings matches 1 run data modify storage practice:info speed set value " Slow"
execute if score rotation_act settings matches 0 run data modify storage practice:info rotation set value " CW"
execute if score rotation_act settings matches 1 run data modify storage practice:info rotation set value " CCW"

scoreboard players operation angle_whole settings = angle_act settings
scoreboard players operation angle_whole settings /= 10 c
scoreboard players operation angle_tenth settings = angle_act settings
scoreboard players operation angle_tenth settings %= 10 c

execute if score angle_act settings matches ..-1 run tellraw @a [{"text":"  Type: "},{"nbt":"location","storage":"practice:info","color":"green"},{"nbt":"direction","storage":"practice:info","color":"green"},{"nbt":"speed","storage":"practice:info","color":"green"},{"nbt":"rotation","storage":"practice:info","color":"green"}]
execute if score angle_act settings matches 0.. run tellraw @a [{"text":"  Type: "},{"nbt":"location","storage":"practice:info","color":"green"},{"nbt":"direction","storage":"practice:info","color":"green"},{"nbt":"speed","storage":"practice:info","color":"green"},{"nbt":"rotation","storage":"practice:info","color":"green"},{"text":" (","color":"green"},{"score":{"name":"angle_whole","objective":"settings"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"angle_tenth","objective":"settings"},"color":"green"},{"text":")","color":"green"}]
