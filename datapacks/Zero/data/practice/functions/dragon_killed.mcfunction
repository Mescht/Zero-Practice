execute store result score height stats run data get entity @p Pos[1] 2
scoreboard players add height stats 1
scoreboard players operation height stats /= 2 c

scoreboard players set flying_to_fountain flags 1

tellraw @a {"text":"\nDragon Killed!","color":"dark_green"}

execute if score plus_1 stats matches 0 run tellraw @a [{"text":"  Explosives: "},{"score":{"name":"explosives","objective":"stats"},"color":"green"}]
scoreboard players operation explosives stats -= plus_1 stats
execute if score plus_1 stats matches 1.. run tellraw @a [{"text":"  Explosives: "},{"score":{"name":"explosives","objective":"stats"},"color":"green"},{"text":"+"},{"score":{"name":"plus_1","objective":"stats"},"color":"green"}]

execute unless score onecycle flags matches 1 run function practice:dragon_killed_zero
execute if score onecycle flags matches 1 run kill @e[type=ender_dragon,nbt={DragonPhase:9}]