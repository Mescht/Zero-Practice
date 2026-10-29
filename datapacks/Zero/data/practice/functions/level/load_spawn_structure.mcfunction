execute if score natural_terrain flags matches 1 run function natural_end:restore

setblock 100 42 0 minecraft:structure_block{posX:-22,posY:1,posZ:-15,mode:"LOAD"}

# populate structure block
execute if score spawn_act settings matches 0 run data modify block 100 42 0 name set value "practice:spawns/open"
execute if score spawn_act settings matches 1 run data modify block 100 42 0 name set value "practice:spawns/overhang"
execute if score spawn_act settings matches 3 run data modify block 100 42 0 name set value "practice:spawns/cage_3"
execute if score spawn_act settings matches 4 run data modify block 100 42 0 name set value "practice:spawns/cage_4"
execute if score spawn_act settings matches 5 run data modify block 100 42 0 name set value "practice:spawns/cage_5"
execute if score spawn_act settings matches 6 run data modify block 100 42 0 name set value "practice:spawns/cage_6"
execute if score spawn_act settings matches 7 run data modify block 100 42 0 name set value "practice:spawns/cage_7"

setblock 100 41 0 minecraft:redstone_block
fill 100 41 0 100 42 0 air