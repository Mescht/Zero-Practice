data modify storage zero_practice_loadouts:loadouts randomizer.availableSlots append from storage zero_practice_loadouts:loadouts randomizer.availableSlots[0]
data remove storage zero_practice_loadouts:loadouts randomizer.availableSlots[0]

scoreboard players remove r rng 1

execute if score r rng matches 1.. run function practice:inventory/randomizer/rotate_array