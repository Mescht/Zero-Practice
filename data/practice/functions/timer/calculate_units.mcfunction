# timer
scoreboard players operation minutes timer = timer timer
scoreboard players operation seconds timer = timer timer
scoreboard players operation thousth timer = timer timer

scoreboard players operation minutes timer /= 1200 c
scoreboard players operation seconds timer /= 20 c
scoreboard players operation seconds timer %= 60 c
scoreboard players operation thousth timer %= 20 c
scoreboard players operation thousth timer *= 5 c

# comparison
scoreboard players operation timer timer_diff = timer timer
scoreboard players operation timer timer_diff -= compare timer_diff

scoreboard players set sign timer_diff 1
execute if score timer timer_diff matches ..0 run scoreboard players set sign timer_diff -1

scoreboard players operation timer timer_diff *= sign timer_diff

scoreboard players operation minutes timer_diff = timer timer_diff
scoreboard players operation seconds timer_diff = timer timer_diff
scoreboard players operation thousth timer_diff = timer timer_diff

scoreboard players operation minutes timer_diff /= 1200 c
scoreboard players operation seconds timer_diff /= 20 c
scoreboard players operation seconds timer_diff %= 60 c
scoreboard players operation thousth timer_diff %= 20 c
scoreboard players operation thousth timer_diff *= 5 c