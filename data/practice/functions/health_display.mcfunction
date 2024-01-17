scoreboard players operation last health = current health
execute store result score current health run data get entity @e[type=minecraft:ender_dragon,limit=1] Health

scoreboard players operation diff health = last health
scoreboard players operation diff health -= current health

execute if score in_lobby flags matches 0 if score diff health matches 1.. run scoreboard players add explosives stats 1

execute if score damage settings matches 0 unless score flying_to_fountain flags matches 1 unless score in_lobby flags matches 1 if score diff health matches 1.. run tellraw @a [{"color":"white","text":"Damage: "},{"color":"red","score":{"name":"diff","objective":"health"}}]
execute if score damage settings matches 1 unless score flying_to_fountain flags matches 1 unless score in_lobby flags matches 1 if score diff health matches 1.. run title @a title {"score":{"name":"diff","objective":"health"},"color":"wite"}

execute store result bossbar minecraft:dragon value run scoreboard players get current health