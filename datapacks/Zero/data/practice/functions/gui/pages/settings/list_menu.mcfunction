execute store result score value gui run data get storage practice:gui pages[1].entries[{active:1b}].value
execute store result score size gui run data get storage practice:gui pages[1].entries[{active:1b}].size

scoreboard players add value gui 1
scoreboard players operation value gui %= size gui

execute store result storage practice:gui pages[1].entries[{active:1b}].value byte 1 run scoreboard players get value gui

data modify storage practice:gui pages[1].entries[{active:1b}].tag.display.Lore set from storage practice:gui pages[1].entries[{active:1b}].tag.display.LoreGray

execute if score value gui matches 0 run data modify storage practice:gui pages[1].entries[{active:1b}].tag.display.Lore[0] set from storage practice:gui pages[1].entries[{active:1b}].tag.display.LoreColor[0]
execute if score value gui matches 1 run data modify storage practice:gui pages[1].entries[{active:1b}].tag.display.Lore[1] set from storage practice:gui pages[1].entries[{active:1b}].tag.display.LoreColor[1]
execute if score value gui matches 2 run data modify storage practice:gui pages[1].entries[{active:1b}].tag.display.Lore[2] set from storage practice:gui pages[1].entries[{active:1b}].tag.display.LoreColor[2]
execute if score value gui matches 3 run data modify storage practice:gui pages[1].entries[{active:1b}].tag.display.Lore[3] set from storage practice:gui pages[1].entries[{active:1b}].tag.display.LoreColor[3]
execute if score value gui matches 4 run data modify storage practice:gui pages[1].entries[{active:1b}].tag.display.Lore[4] set from storage practice:gui pages[1].entries[{active:1b}].tag.display.LoreColor[4]
execute if score value gui matches 5 run data modify storage practice:gui pages[1].entries[{active:1b}].tag.display.Lore[5] set from storage practice:gui pages[1].entries[{active:1b}].tag.display.LoreColor[5]
execute if score value gui matches 6 run data modify storage practice:gui pages[1].entries[{active:1b}].tag.display.Lore[6] set from storage practice:gui pages[1].entries[{active:1b}].tag.display.LoreColor[6]
execute if score value gui matches 7 run data modify storage practice:gui pages[1].entries[{active:1b}].tag.display.Lore[7] set from storage practice:gui pages[1].entries[{active:1b}].tag.display.LoreColor[7]
execute if score value gui matches 8 run data modify storage practice:gui pages[1].entries[{active:1b}].tag.display.Lore[8] set from storage practice:gui pages[1].entries[{active:1b}].tag.display.LoreColor[8]    