scoreboard players remove cooldown health 1

title @a title {"text":""}

execute if score cooldown health matches 10 run title @a subtitle {"text":"■■■■■■■■■■","color":"red"}
execute if score cooldown health matches 9 run title @a subtitle {"text":"■■■■■■■■■□","color":"red"}
execute if score cooldown health matches 8 run title @a subtitle {"text":"■■■■■■■■□□","color":"red"}
execute if score cooldown health matches 7 run title @a subtitle {"text":"■■■■■■■□□□","color":"red"}
execute if score cooldown health matches 6 run title @a subtitle {"text":"■■■■■■□□□□","color":"red"}
execute if score cooldown health matches 5 run title @a subtitle {"text":"■■■■■□□□□□","color":"red"}
execute if score cooldown health matches 4 run title @a subtitle {"text":"■■■■□□□□□□","color":"red"}
execute if score cooldown health matches 3 run title @a subtitle {"text":"■■■□□□□□□□","color":"red"}
execute if score cooldown health matches 2 run title @a subtitle {"text":"■■□□□□□□□□","color":"red"}
execute if score cooldown health matches 1 run title @a subtitle {"text":"■□□□□□□□□□","color":"red"}
execute if score cooldown health matches 0 run title @a subtitle {"text":"□□□□□□□□□□","color":"green"}