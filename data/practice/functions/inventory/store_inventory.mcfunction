data modify storage practice:loadouts selected.inventory append from storage practice:loadouts selected.inventory_all[-1]

execute store result storage practice:loadouts selected.inventory[-1].Slot byte 1 run scoreboard players remove slot_num inv 9
scoreboard players add slot_num inv 9