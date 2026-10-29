execute if score index gui matches 0..9 run function practice:gui/pages/home/toggle_tower
execute if score index gui matches 10 run function practice:gui/pages/home/enable_all_towers
execute if score index gui matches 11 run function practice:gui/pages/home/disable_all_towers
execute if score index gui matches 12..13 run function practice:gui/pages/settings/list_menu
execute if score index gui matches 12 run scoreboard players operation tower_left settings = value gui
execute if score index gui matches 13 run scoreboard players operation tower_right settings = value gui

execute if score index gui matches 26 in the_end run function practice:onecycle/edit_setup