setblock 0 0 0 white_shulker_box

# load hotbar
data modify block 0 0 0 Items set from storage practice:loadouts selected.hotbar
loot replace entity @s hotbar.0 9 mine 0 0 0 minecraft:air{drop_contents:1b}
data modify block 0 0 0 Items set value []

# load inventory
data modify block 0 0 0 Items set from storage practice:loadouts selected.inventory
loot replace entity @s inventory.0 27 mine 0 0 0 minecraft:air{drop_contents:1b}
data modify block 0 0 0 Items set value []

# load offhand
data modify block 0 0 0 Items set from storage practice:loadouts selected.offhand
loot replace entity @s weapon.offhand mine 0 0 0 minecraft:air{drop_contents:1b}
data modify block 0 0 0 Items set value []

#load armor
data modify block 0 0 0 Items set from storage practice:loadouts selected.armor
loot replace entity @s armor.feet 4 mine 0 0 0 minecraft:air{drop_contents:1b}
data modify block 0 0 0 Items set value []

setblock 0 0 0 air