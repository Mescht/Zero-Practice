execute in minecraft:the_end positioned 0 128 0 if entity @a[distance=..192] run scoreboard players add fight_heal_seen flags 1
execute in minecraft:the_end as @e[type=minecraft:ender_dragon,distance=0..,tag=!fight_park,nbt={DeathTime:0s}] run function practice:fight/heal_hop
execute if score fight_heal_done flags matches 0 unless entity 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 in minecraft:the_end run summon minecraft:ender_dragon 0 -20 0 {UUID:[I;2068606496,-1918480774,-1456198723,127855351],Tags:["fight_park"],NoAI:1b,Silent:1b,DragonPhase:0}
scoreboard players set fight_phase flags 0
execute if score fight_heal_done flags matches 0 in minecraft:the_end positioned 0 128 0 as @a[distance=..192,gamemode=!creative,gamemode=!spectator,limit=1] at @s run function practice:fight/heal_probe
execute if score fight_heal_done flags matches 0 if score fight_phase flags matches 1 run function practice:fight/heal_confirm
execute if score fight_heal_reset flags matches 1 if entity @a run function practice:fight/heal_reset
execute if score fight_heal_done flags matches 1 if score fight_heal_seen flags matches 200.. run function practice:fight/heal_end
execute if score fight_heal_seen flags matches 2400.. run function practice:fight/heal_end
