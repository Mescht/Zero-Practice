# clear all storages
data remove storage practice:loadouts selected.offhand
data remove storage practice:loadouts selected.armor
data remove storage practice:loadouts selected.hotbar
data remove storage practice:loadouts selected.inventory

# get number of used slots
execute store result score slot_count inv run data get storage practice:loadouts selected.inventory_all

# sort inventory recursively
execute if score slot_count inv matches 1.. run function practice:inventory/sortinv_rec