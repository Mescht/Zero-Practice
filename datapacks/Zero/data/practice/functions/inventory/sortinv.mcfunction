# clear all storages
data remove storage zero_practice_loadouts:loadouts selected.offhand
data remove storage zero_practice_loadouts:loadouts selected.armor
data remove storage zero_practice_loadouts:loadouts selected.hotbar
data remove storage zero_practice_loadouts:loadouts selected.inventory

data remove storage zero_practice_loadouts:loadouts selected.commands

# get number of used slots
execute store result score slot_count inv run data get storage zero_practice_loadouts:loadouts selected.inventory_all

# sort inventory recursively
execute if score slot_count inv matches 1.. run function practice:inventory/sortinv_rec