execute if score fight_heal_done flags matches 0 if entity 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 run function practice:fight/remove
execute in minecraft:the_end run forceload remove 0 0
execute in minecraft:the_end run forceload remove 400 400
scoreboard players set fight_heal flags 0
