execute if score timer settings matches 0 run tellraw @a [{"text":"  Time: "},{"nbt":"time_string","storage":"practice:timeparser","interpret":true,"color":"gold"}]

tellraw @a [{"text":"  Tower: "},{"nbt":"active","storage":"practice:towers","color":"green"}]

execute if score location_act settings matches 0 if score direction_act settings matches 0 if score rotation_act settings matches 0 run tellraw @a [{"text":"  Type: "},{"text":"Front Diagonal CW","color":"green"}]
execute if score location_act settings matches 1 if score direction_act settings matches 0 if score rotation_act settings matches 0 run tellraw @a [{"text":"  Type: "},{"text":"Back Diagonal CW","color":"green"}]
execute if score location_act settings matches 0 if score direction_act settings matches 1 if score rotation_act settings matches 0 run tellraw @a [{"text":"  Type: "},{"text":"Front Straight CW","color":"green"}]
execute if score location_act settings matches 1 if score direction_act settings matches 1 if score rotation_act settings matches 0 run tellraw @a [{"text":"  Type: "},{"text":"Back Straight CW","color":"green"}]

execute if score location_act settings matches 0 if score direction_act settings matches 0 if score rotation_act settings matches 1 run tellraw @a [{"text":"  Type: "},{"text":"Front Diagonal CCW","color":"green"}]
execute if score location_act settings matches 1 if score direction_act settings matches 0 if score rotation_act settings matches 1 run tellraw @a [{"text":"  Type: "},{"text":"Back Diagonal CCW","color":"green"}]
execute if score location_act settings matches 0 if score direction_act settings matches 1 if score rotation_act settings matches 1 run tellraw @a [{"text":"  Type: "},{"text":"Front Straight CCW","color":"green"}]
execute if score location_act settings matches 1 if score direction_act settings matches 1 if score rotation_act settings matches 1 run tellraw @a [{"text":"  Type: "},{"text":"Back Straight CCW","color":"green"}]

tellraw @a [{"text":"  Standing Height: "},{"score":{"name":"height","objective":"stats"},"color":"green"}]