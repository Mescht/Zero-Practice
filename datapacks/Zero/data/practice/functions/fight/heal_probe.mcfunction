summon minecraft:end_crystal ~ ~ ~ {Tags:["fight_probe"]}
kill @e[type=minecraft:end_crystal,tag=fight_probe]
scoreboard players set fight_phase flags 0
execute if entity 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 store result score fight_phase flags run data get entity 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 DragonPhase
