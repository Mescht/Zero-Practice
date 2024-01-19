give @a minecraft:oak_sign
setblock 136 66 4 target
setblock 136 66 3 air
tellraw @a {"text":"Place the sign an put the new name in the first line","color":"dark_green"}
scoreboard players set renaming flags 1