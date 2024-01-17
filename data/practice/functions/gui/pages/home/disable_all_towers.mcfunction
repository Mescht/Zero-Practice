data modify storage practice:gui pages[0].entries[{id:"minecraft:obsidian"}].enabled set value 0b
data remove storage practice:gui pages[0].entries[{id:"minecraft:obsidian"}].tag.Enchantments
data modify storage practice:gui pages[0].entries[{id:"minecraft:obsidian"}].tag.display.Lore set value ['{"text":"Disabled","color":"red","italic":"false"}']