kill @e[type=ender_dragon]
execute if score cw rotation > ccw rotation run tellraw @a [{"score":{"name":"set","objective":"rotation"}},{"text":" cw"}]
execute if score ccw rotation > cw rotation run tellraw @a [{"score":{"name":"set","objective":"rotation"}},{"text":" ccw"}]

scoreboard players add set rotation 10
execute if score set rotation matches ..35999 run function practice:rotation_profiler/loop