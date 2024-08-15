# set up data
data modify storage practice:loadouts randomizer.stack set from storage practice:loadouts selected.inventory
data modify storage practice:loadouts randomizer.availableSlots set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26]
data remove storage practice:loadouts randomizer.inventory

# exclude egg from randomizer
execute if data storage practice:loadouts selected.inventory[{id:"minecraft:egg"}] run function practice:inventory/randomizer/egg

function practice:inventory/randomizer/loop_slots