# front diag
execute if score location_act settings matches 0 if score direction_act settings matches 0 run particle dust 0.031 1.000 0.678 1 28.0 80 -29.0 0 20 0 1 100 force
# back diag
execute if score location_act settings matches 1 if score direction_act settings matches 0 run particle dust 0.031 1.000 0.678 1 -29.0 80 28.0 0 20 0 1 100 force
# front straight
execute if score location_act settings matches 0 if score direction_act settings matches 1 run particle dust 0.031 1.000 0.678 1 20.0 80 0.0 0 20 0 1 100 force
# bakc straight
execute if score location_act settings matches 1 if score direction_act settings matches 1 run particle dust 0.031 1.000 0.678 1 -20.0 80 0.0 0 20 0 1 100 force