setblock 0 73 0 structure_block{posX:-12, posY:-15, posZ:-12, mode: "LOAD", name: "practice:fountain_setup"}
setblock 0 74 0 minecraft:redstone_block
setblock 0 74 0 air
data modify block 0 73 0 mode set value "SAVE"

tp @a 0 62 -6 0 0
gamemode creative @a
summon armor_stand 0 74.3 0 {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["save"],CustomName:'{"text":"Save Here","color":"gold","bold":true}'}
summon armor_stand 0 74.0 0 {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["save"],CustomName:'[{"text":"(["},{"translate":"structure_block.button.save"},{"text":"] Button on the Bottom Right)"}]'}
give @a egg
scoreboard players set in_lobby flags 0