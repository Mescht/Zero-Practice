# location: 0 = front | 1 = back | 2 = random
execute if score location_act settings matches 0 run function practice:nodes/force_front
execute if score location_act settings matches 1 run function practice:nodes/force_back

# direction: 0 = diagonal | 1 = straight | 2 = random
execute if score direction_act settings matches 0 run function practice:nodes/force_diagonal
execute if score direction_act settings matches 1 run function practice:nodes/force_straight
