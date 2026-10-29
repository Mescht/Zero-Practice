execute store result score mob_loot flags run gamerule doMobLoot
execute if score mob_loot flags matches 1 at 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 run summon minecraft:experience_orb ~ ~ ~ {Value:37s}
execute if score mob_loot flags matches 1 at 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 run summon minecraft:experience_orb ~ ~ ~ {Value:3s}
execute if score mob_loot flags matches 1 at 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 run summon minecraft:experience_orb ~ ~0.1 ~ {Value:73s}
execute if score mob_loot flags matches 1 at 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 run summon minecraft:experience_orb ~ ~0.1 ~ {Value:17s}
execute if score mob_loot flags matches 1 at 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 run summon minecraft:experience_orb ~ ~0.1 ~ {Value:7s}
execute if score mob_loot flags matches 1 at 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 run summon minecraft:experience_orb ~ ~0.1 ~ {Value:3s}
function practice:fight/remove
