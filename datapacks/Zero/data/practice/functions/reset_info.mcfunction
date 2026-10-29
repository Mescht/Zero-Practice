execute if entity @a[scores={death=1..}] run tellraw @a {"text":"\nAttempt Failed","color":"red"}
execute unless entity @a[scores={death=1..}] run tellraw @a {"text":"\nAttempt Reset","color":"red"}

tellraw @a [{"text":"  Tower: "},{"nbt":"active","storage":"practice:towers","color":"green"}]
function practice:print_type

scoreboard players operation buried settings = spawn_act settings
scoreboard players add buried settings 51
execute if score spawn_act settings matches 0 run tellraw @a [{"text":"  Spawn: "},{"text":"Open","color":"green"}]
execute if score spawn_act settings matches 1 run tellraw @a [{"text":"  Spawn: "},{"text":"Overhang","color":"green"}]
execute if score spawn_act settings matches 3..7 run tellraw @a [{"text":"  Spawn: "},{"text":"Buried ","color":"green"},{"score":{"name":"buried","objective":"settings"},"color":"green"}]
