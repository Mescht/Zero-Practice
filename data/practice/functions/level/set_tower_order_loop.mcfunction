# choose random armorstand
scoreboard players add counter tower_order 1
execute unless score counter tower_order = @e[tag=selected,limit=1] tower_order run scoreboard players operation @e[tag=tower,limit=1,sort=random,scores={tower_order=-1}] tower_order = counter tower_order

# loop
execute if score counter tower_order matches ..9 run function practice:level/set_tower_order_loop