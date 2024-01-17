execute store result score enabled gui run data get storage practice:gui pages[0].entries[{active:1b}].enabled

execute if score enabled gui matches 0 run data modify storage practice:gui pages[0].entries[{active:1b}].enabled set value 1b
execute if score enabled gui matches 0 run data modify storage practice:gui pages[0].entries[{active:1b}].tag.Enchantments set value [{}]
execute if score enabled gui matches 0 run data modify storage practice:gui pages[0].entries[{active:1b}].tag.display.Lore set value ['{"text":"Enabled","color":"green","italic":"false"}']

execute if score enabled gui matches 1 run data modify storage practice:gui pages[0].entries[{active:1b}].enabled set value 0b
execute if score enabled gui matches 1 run data remove storage practice:gui pages[0].entries[{active:1b}].tag.Enchantments
execute if score enabled gui matches 1 run data modify storage practice:gui pages[0].entries[{active:1b}].tag.display.Lore set value ['{"text":"Disabled","color":"red","italic":"false"}']