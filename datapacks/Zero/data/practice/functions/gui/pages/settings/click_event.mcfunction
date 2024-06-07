execute if score index gui matches 0..10 run function practice:gui/pages/settings/list_menu

execute if score index gui matches 0 run scoreboard players operation location settings = value gui
execute if score index gui matches 1 run scoreboard players operation direction settings = value gui
execute if score index gui matches 2 run scoreboard players operation damage settings = value gui
execute if score index gui matches 3 run scoreboard players operation saturation settings = value gui
execute if score index gui matches 4 run scoreboard players operation spawn settings = value gui
execute if score index gui matches 5 run scoreboard players operation knockback settings = value gui
execute if score index gui matches 6 run scoreboard players operation timer settings = value gui
execute if score index gui matches 7 run scoreboard players operation rotation settings = value gui
execute if score index gui matches 8 run scoreboard players operation randomize settings = value gui
execute if score index gui matches 9 run scoreboard players operation iframe settings = value gui
execute if score index gui matches 10 run scoreboard players operation show_nodes settings = value gui

execute if score index gui matches 26 run function practice:gui/pages/home/set_active