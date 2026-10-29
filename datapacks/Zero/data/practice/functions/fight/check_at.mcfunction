scoreboard players set fight_ok flags 0
execute unless entity 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 run summon minecraft:ender_dragon ~ ~-30 ~ {UUID:[I;2068606496,-1918480774,-1456198723,127855351],Tags:["fight_park"],NoAI:1b,Silent:1b,DragonPhase:0}
function practice:fight/heal_probe
execute if score fight_phase flags matches 1 run scoreboard players set fight_ok flags 1
