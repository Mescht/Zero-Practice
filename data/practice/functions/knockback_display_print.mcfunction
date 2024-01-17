execute if score k_dec height matches 10.. run tellraw @a [{"color":"yellow","score":{"name":"k_num","objective":"height"}},{"text":"."},{"score":{"name":"k_dec","objective":"height"}},{"color":"white","text":" Blocks"}]
execute if score k_dec height matches ..9 run tellraw @a [{"color":"yellow","score":{"name":"k_num","objective":"height"}},{"text":".0"},{"score":{"name":"k_dec","objective":"height"}},{"color":"white","text":" Blocks"}]

scoreboard players set explosion height 0