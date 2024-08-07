execute as @a[scores={sneaking=1}] run function practice:inventory/rename/sneak
execute as @a[scores={sneaking=1..}] unless predicate practice:sneaking run function practice:inventory/rename/unsneak

#execute if score renaming flags matches 1 in minecraft:the_end if data block 136 66 3 Text1 run function practice:inventory/rename/renamed
execute if score renaming flags matches 2 in minecraft:the_end if block 136 66 3 oak_wall_sign run function practice:inventory/rename/renamed
execute if score renaming flags matches 1 in minecraft:the_end if block 136 66 3 oak_wall_sign run function practice:inventory/rename/renamed_pre