scoreboard players operation last health = current health
execute store result score current health run data get entity @e[type=minecraft:ender_dragon,limit=1] Health

scoreboard players operation diff health = last health
scoreboard players operation diff health -= current health

# set helth diff to 0 if damage is not valid
execute if score flying_to_fountain flags matches 1 run scoreboard players set diff health 0
execute if score in_lobby flags matches 1 run scoreboard players set diff health 0

# dragon was damaged
execute unless score flying_to_fountain flags matches 1 unless score in_lobby flags matches 1 if score diff health matches 1.. run function practice:health_display_damaged

# iframe display
execute if score iframe settings matches 0 if score cooldown health matches 0.. run function practice:iframe_display

execute store result bossbar minecraft:dragon value run scoreboard players get current health