# set up counter and reset scores
scoreboard players set counter tower_order -1
scoreboard players set @e[tag=tower,tag=!selected] tower_order -1

# loop over all towers
function practice:level/set_tower_order_loop