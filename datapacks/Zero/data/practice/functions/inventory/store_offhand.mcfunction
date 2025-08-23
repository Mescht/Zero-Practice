data modify storage zero_practice_loadouts:loadouts selected.offhand append from storage zero_practice_loadouts:loadouts selected.inventory_all[-1]

execute store result storage zero_practice_loadouts:loadouts selected.offhand[-1].Slot byte 1 run scoreboard players add slot_num inv 106
scoreboard players remove slot_num inv 106