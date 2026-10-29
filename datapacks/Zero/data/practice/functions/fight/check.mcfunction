scoreboard players set fight_ok flags -1
execute in minecraft:the_end as @a[distance=0..,gamemode=!creative,gamemode=!spectator,limit=1] at @s run function practice:fight/check_at
execute if entity 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 run function practice:fight/remove
execute if score fight_ok flags matches 0 run tellraw @a {"text":"Reopen this world once so the dragon hears crystal breaks with On Crystal Break: Vanilla.","color":"gold"}
