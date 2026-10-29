execute if score fight_heal flags matches 1 run function practice:fight/heal
execute if score crystal_break settings matches 1 unless score crystal_break_last flags matches 1 if score in_lobby flags matches 1 unless score fight_heal flags matches 1 run function practice:fight/check
scoreboard players operation crystal_break_last flags = crystal_break settings
scoreboard players set fight_hp flags 1
execute if entity 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 store result score fight_hp flags run data get entity 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 Health 100
execute if score fight_hp flags matches 1.. run scoreboard players set fight_death flags 0
execute if score fight_hp flags matches ..0 run scoreboard players add fight_death flags 1
execute if score fight_death flags matches 200.. run function practice:fight/expire
