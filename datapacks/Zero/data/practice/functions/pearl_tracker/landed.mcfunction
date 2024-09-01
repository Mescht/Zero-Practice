# x
scoreboard players operation x_int pearl = x pearl
scoreboard players operation x_int pearl /= 100 c
scoreboard players operation x_hun pearl = x pearl
scoreboard players operation x_hun pearl %= 100 c

# y
scoreboard players operation y_int pearl = y pearl
scoreboard players operation y_int pearl /= 100 c
scoreboard players operation y_hun pearl = y pearl
scoreboard players operation y_hun pearl %= 100 c

# z
scoreboard players operation z_int pearl = z pearl
scoreboard players operation z_int pearl /= 100 c
scoreboard players operation z_hun pearl = z pearl
scoreboard players operation z_hun pearl %= 100 c

# calculate distance
scoreboard players operation dx pearl = x pearl
scoreboard players operation dx pearl -= x_start pearl
scoreboard players operation dx pearl *= dx pearl
scoreboard players operation dy pearl = y pearl
scoreboard players operation dy pearl -= y_start pearl
scoreboard players operation dy pearl *= dy pearl
scoreboard players operation dz pearl = z pearl
scoreboard players operation dz pearl -= z_start pearl
scoreboard players operation dz pearl *= dz pearl

scoreboard players operation in sqrt = dx pearl
scoreboard players operation in sqrt += dy pearl
scoreboard players operation in sqrt += dz pearl

function practice:sqrt/calc

scoreboard players operation dist_int pearl = out sqrt
scoreboard players operation dist_int pearl /= 100 c
scoreboard players operation dist_hun pearl = out sqrt
scoreboard players operation dist_hun pearl %= 100 c

# print
function practice:pearl_tracker/parse

execute if score pearl_tracker settings matches 0 run function practice:pearl_tracker/print_simple
execute if score pearl_tracker settings matches 1 run function practice:pearl_tracker/print_detailed
execute if score pearl_tracker settings matches 2 run function practice:pearl_tracker/print_height_only