execute if score timer settings matches 0 run tellraw @a [{"text":"  Time: "},{"nbt":"time_string","storage":"practice:timeparser","interpret":true,"color":"gold"}]

tellraw @a [{"text":"  Tower: "},{"nbt":"active","storage":"practice:towers","color":"green"}]

function practice:print_type

tellraw @a [{"text":"  Standing Height: "},{"score":{"name":"height","objective":"stats"},"color":"green"}]
scoreboard players operation buried settings = spawn_act settings
scoreboard players add buried settings 51
execute if score spawn_act settings matches 3..7 run tellraw @a [{"text":"  Buried Height: "},{"score":{"name":"buried","objective":"settings"},"color":"green"}]