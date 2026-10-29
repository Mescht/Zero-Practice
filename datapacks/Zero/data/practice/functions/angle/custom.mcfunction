scoreboard players operation angle_act settings = value custom_rotation
scoreboard players operation angle_act settings %= 3600 c
scoreboard players set rotation_act settings 1

execute if score location_act settings matches 0 if score direction_act settings matches 0 if score angle_act settings matches 3387..3599 run scoreboard players set rotation_act settings 0
execute if score location_act settings matches 0 if score direction_act settings matches 0 if score angle_act settings matches 0..436 run scoreboard players set rotation_act settings 0
execute if score location_act settings matches 0 if score direction_act settings matches 0 if score angle_act settings matches 1095..2239 run scoreboard players set rotation_act settings 0

execute if score location_act settings matches 1 if score direction_act settings matches 0 if score angle_act settings matches 1606..2263 run scoreboard players set rotation_act settings 0
execute if score location_act settings matches 1 if score direction_act settings matches 0 if score angle_act settings matches 2914..3599 run scoreboard players set rotation_act settings 0
execute if score location_act settings matches 1 if score direction_act settings matches 0 if score angle_act settings matches 0..460 run scoreboard players set rotation_act settings 0

execute if score location_act settings matches 0 if score direction_act settings matches 1 if score angle_act settings matches 901..2700 run scoreboard players set rotation_act settings 0
execute if score location_act settings matches 1 if score direction_act settings matches 1 if score angle_act settings matches 2700..3599 run scoreboard players set rotation_act settings 0
execute if score location_act settings matches 1 if score direction_act settings matches 1 if score angle_act settings matches 0..899 run scoreboard players set rotation_act settings 0
