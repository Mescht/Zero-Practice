# copy enabled / disabled flag from settings menu to towers
function practice:level/copy_enabled_towers

# move all enabled towers into stack
data modify storage practice:towers stack set from storage practice:towers towers
data remove storage practice:towers stack[{enabled:0b}]

# use all towers if none are enabled
execute unless data storage practice:towers stack[0] run data modify storage practice:towers stack set from storage practice:towers towers 

# chose random enabled tower
execute store result score mod rng run data get storage practice:towers stack
function practice:random/generate

# push chosen tower to top of stack
execute if score r rng matches 1.. run function practice:level/choose_tower_loop

# copy tower id to scoreboard
execute store result score tower settings run data get storage practice:towers stack[0].index

# give selected tag correct armorstand
tag @e[tag=tower] remove selected
execute if score location_act settings matches 0 run tag @e[tag=tower,tag=front] add selected
execute if score location_act settings matches 1 run tag @e[tag=tower,tag=back] add selected
execute if score direction_act settings matches 0 run tag @e[tag=tower,tag=!diagonal] remove selected
execute if score direction_act settings matches 1 run tag @e[tag=tower,tag=!straight] remove selected

# set tower score
scoreboard players operation @e[tag=tower,tag=selected] tower_order = tower settings

# copy selected tower name
data modify storage practice:towers active set from storage practice:towers stack[0].name