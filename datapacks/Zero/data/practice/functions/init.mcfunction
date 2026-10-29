scoreboard players set 10 c 10

execute if score fight_heal flags matches 1 run function practice:fight/heal_end
execute if score crystal_break settings matches 1 unless entity @a run function practice:fight/heal_start