# increment timer
execute if score active timer matches 1 run scoreboard players add timer timer 1

# display timer in actionbar
function practice:timer/calculate_units
function practice:timer/parser

execute if score timer settings matches 0 run title @a actionbar [{"nbt":"time_string","storage":"practice:timeparser","interpret":true}]