# get egg slot
execute store result score r rng run data get storage zero_practice_loadouts:loadouts selected.inventory[{id:"minecraft:egg"}].Slot

# remove from available slots
execute if score r rng matches 1.. run function practice:inventory/randomizer/rotate_array
data remove storage zero_practice_loadouts:loadouts randomizer.availableSlots[0]

# move egg to output
data modify storage zero_practice_loadouts:loadouts randomizer.inventory append from storage zero_practice_loadouts:loadouts randomizer.stack[{id:"minecraft:egg"}]
data remove storage zero_practice_loadouts:loadouts randomizer.stack[{id:"minecraft:egg"}]