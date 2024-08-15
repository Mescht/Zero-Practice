# get egg slot
execute store result score r rng run data get storage practice:loadouts selected.inventory[{id:"minecraft:egg"}].Slot

# remove from available slots
execute if score r rng matches 1.. run function practice:inventory/randomizer/rotate_array
data remove storage practice:loadouts randomizer.availableSlots[0]

# move egg to output
data modify storage practice:loadouts randomizer.inventory append from storage practice:loadouts randomizer.stack[{id:"minecraft:egg"}]
data remove storage practice:loadouts randomizer.stack[{id:"minecraft:egg"}]