function practice:gui/set_entry_active
execute if score page gui matches 0 run function practice:gui/pages/home/click_event
execute if score page gui matches 1 run function practice:gui/pages/settings/click_event

execute store result score page gui run data get storage practice:gui pages[{active:1b}].index
function practice:gui/load

execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~