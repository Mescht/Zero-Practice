kill @e[type=ender_dragon]
scoreboard players set active timer 0
scoreboard players add timer timer 199
function practice:timer/timer
scoreboard players reset flying_to_fountain flags

execute if score timer settings matches 0 run tellraw @a [{"text":"\nFinal Time: "},{"nbt":"time_string","storage":"practice:timeparser","interpret":true,"color":"gold"}]
