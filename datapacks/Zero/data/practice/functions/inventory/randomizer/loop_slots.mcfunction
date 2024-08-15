# get nuber of available slots
execute store result score mod rng run data get storage practice:loadouts randomizer.availableSlots
function practice:random/generate

# recursively rotate array to get the n-th element to the start
execute if score r rng matches 1.. run function practice:inventory/randomizer/rotate_array

# change slot number and remove that number from available slots
data modify storage practice:loadouts randomizer.stack[0].Slot set from storage practice:loadouts randomizer.availableSlots[0]
data remove storage practice:loadouts randomizer.availableSlots[0]

# move element from stack to output
data modify storage practice:loadouts randomizer.inventory append from storage practice:loadouts randomizer.stack[0]
data remove storage practice:loadouts randomizer.stack[0]

# loop until stack is empty
execute if data storage practice:loadouts randomizer.stack[0] run function practice:inventory/randomizer/loop_slots