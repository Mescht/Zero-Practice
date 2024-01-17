scoreboard players set r rng 0

execute if predicate practice:rand_50 run scoreboard players add r rng 1
execute if predicate practice:rand_50 run scoreboard players add r rng 2
execute if predicate practice:rand_50 run scoreboard players add r rng 4
execute if predicate practice:rand_50 run scoreboard players add r rng 8
execute if predicate practice:rand_50 run scoreboard players add r rng 16
execute if predicate practice:rand_50 run scoreboard players add r rng 32
execute if predicate practice:rand_50 run scoreboard players add r rng 64
execute if predicate practice:rand_50 run scoreboard players add r rng 128
execute if predicate practice:rand_50 run scoreboard players add r rng 256
execute if predicate practice:rand_50 run scoreboard players add r rng 512
execute if predicate practice:rand_50 run scoreboard players add r rng 1024
execute if predicate practice:rand_50 run scoreboard players add r rng 2048
execute if predicate practice:rand_50 run scoreboard players add r rng 4096
execute if predicate practice:rand_50 run scoreboard players add r rng 8192
execute if predicate practice:rand_50 run scoreboard players add r rng 16384
execute if predicate practice:rand_50 run scoreboard players add r rng 32768
execute if predicate practice:rand_50 run scoreboard players add r rng 65536
execute if predicate practice:rand_50 run scoreboard players add r rng 131072
execute if predicate practice:rand_50 run scoreboard players add r rng 262144
execute if predicate practice:rand_50 run scoreboard players add r rng 524288
execute if predicate practice:rand_50 run scoreboard players add r rng 1048576
execute if predicate practice:rand_50 run scoreboard players add r rng 2097152
execute if predicate practice:rand_50 run scoreboard players add r rng 4194304
execute if predicate practice:rand_50 run scoreboard players add r rng 8388608

scoreboard players operation r rng %= mod rng