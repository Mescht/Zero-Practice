execute store result score height stats run data get entity @p Pos[1]

scoreboard players set flying_to_fountain flags 1

tellraw @a {"text":"\nDragon Killed!","color":"dark_green"}

execute if score plus_1 stats matches 0 run tellraw @a [{"text":"  Explosives: "},{"score":{"name":"explosives","objective":"stats"},"color":"green"}]
scoreboard players operation explosives stats -= plus_1 stats
execute if score plus_1 stats matches 1.. run tellraw @a [{"text":"  Explosives: "},{"score":{"name":"explosives","objective":"stats"},"color":"green"},{"text":"+"},{"score":{"name":"plus_1","objective":"stats"},"color":"green"}]
execute if score timer settings matches 0 run tellraw @a [{"text":"  Time: "},{"nbt":"time_string","storage":"practice:timeparser","interpret":true,"color":"gold"}]
tellraw @a [{"text":"  Tower: "},{"nbt":"active","storage":"practice:towers","color":"green"}]

execute if score location_act settings matches 0 if score direction_act settings matches 0 if score rotation_act settings matches 0 run tellraw @a [{"text":"  Type: "},{"text":"Front Diagonal CW","color":"green"}]
execute if score location_act settings matches 1 if score direction_act settings matches 0 if score rotation_act settings matches 0 run tellraw @a [{"text":"  Type: "},{"text":"Back Diagonal CW","color":"green"}]
execute if score location_act settings matches 0 if score direction_act settings matches 1 if score rotation_act settings matches 0 run tellraw @a [{"text":"  Type: "},{"text":"Front Straight CW","color":"green"}]
execute if score location_act settings matches 1 if score direction_act settings matches 1 if score rotation_act settings matches 0 run tellraw @a [{"text":"  Type: "},{"text":"Back Straight CW","color":"green"}]

execute if score location_act settings matches 0 if score direction_act settings matches 0 if score rotation_act settings matches 1 run tellraw @a [{"text":"  Type: "},{"text":"Front Diagonal CWW","color":"green"}]
execute if score location_act settings matches 1 if score direction_act settings matches 0 if score rotation_act settings matches 1 run tellraw @a [{"text":"  Type: "},{"text":"Back Diagonal CWW","color":"green"}]
execute if score location_act settings matches 0 if score direction_act settings matches 1 if score rotation_act settings matches 1 run tellraw @a [{"text":"  Type: "},{"text":"Front Straight CWW","color":"green"}]
execute if score location_act settings matches 1 if score direction_act settings matches 1 if score rotation_act settings matches 1 run tellraw @a [{"text":"  Type: "},{"text":"Back Straight CWW","color":"green"}]

tellraw @a [{"text":"  Standing Height: "},{"score":{"name":"height","objective":"stats"},"color":"green"}]