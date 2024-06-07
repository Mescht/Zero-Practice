scoreboard players add explosives stats 1

execute if score damage settings matches 0 run tellraw @a [{"color":"white","text":"Damage: "},{"color":"red","score":{"name":"diff","objective":"health"}}]

# iframe display
execute if score cooldown health matches ..0 run scoreboard players set cooldown health 10

# +1 detection
execute unless score crossbow health matches 1 run scoreboard players operation damage_time health -= timer timer
execute unless score crossbow health matches 1 if score damage_time health matches -30.. run scoreboard players add plus_1 stats 1
execute unless score crossbow health matches 1 run scoreboard players operation damage_time health = timer timer

scoreboard players reset crossbow health