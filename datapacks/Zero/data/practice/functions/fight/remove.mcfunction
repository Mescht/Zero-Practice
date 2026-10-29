execute in minecraft:overworld run forceload add 536 536
execute in minecraft:overworld run tp 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 536 250 536
execute as 7b4c6e20-8da6-4e7a-a934-2bbd079eeaf7 if entity @s[x=535,y=249,z=535,dx=2,dy=2,dz=2] run kill @s
schedule function practice:fight/unload 5t replace
scoreboard players set fight_death flags 0
