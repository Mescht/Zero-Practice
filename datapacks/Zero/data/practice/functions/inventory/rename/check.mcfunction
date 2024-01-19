execute as @a[scores={sneaking=1}] run function practice:inventory/rename/sneak
execute as @a[scores={sneaking=1..}] unless predicate practice:sneaking run function practice:inventory/rename/unsneak
execute as @a[scores={sneaking=1..}] unless predicate practice:sneaking run scoreboard players reset @s sneaking

execute if score renaming flags matches 1 in minecraft:the_end if data block 136 66 3 Text1 run function practice:inventory/rename/renamed