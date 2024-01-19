scoreboard players set mod rng 5
function practice:random/generate
scoreboard players operation spawn_act settings = r rng
scoreboard players add spawn_act settings 3