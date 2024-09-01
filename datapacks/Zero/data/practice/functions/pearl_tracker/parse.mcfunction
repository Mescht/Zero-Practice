# x
execute if score x_hun pearl matches ..9 run data modify storage practice:coords_parser x set value "[{\"score\":{\"name\":\"x_int\",\"objective\":\"pearl\"}},{\"text\":\".0\"},{\"score\":{\"name\":\"x_hun\",\"objective\":\"pearl\"}}]"
execute if score x_hun pearl matches 10.. run data modify storage practice:coords_parser x set value "[{\"score\":{\"name\":\"x_int\",\"objective\":\"pearl\"}},{\"text\":\".\"},{\"score\":{\"name\":\"x_hun\",\"objective\":\"pearl\"}}]"

# y
execute if score y_hun pearl matches ..9 run data modify storage practice:coords_parser y set value "[{\"score\":{\"name\":\"y_int\",\"objective\":\"pearl\"}},{\"text\":\".0\"},{\"score\":{\"name\":\"y_hun\",\"objective\":\"pearl\"}}]"
execute if score y_hun pearl matches 10.. run data modify storage practice:coords_parser y set value "[{\"score\":{\"name\":\"y_int\",\"objective\":\"pearl\"}},{\"text\":\".\"},{\"score\":{\"name\":\"y_hun\",\"objective\":\"pearl\"}}]"

# z
execute if score z_hun pearl matches ..9 run data modify storage practice:coords_parser z set value "[{\"score\":{\"name\":\"z_int\",\"objective\":\"pearl\"}},{\"text\":\".0\"},{\"score\":{\"name\":\"z_hun\",\"objective\":\"pearl\"}}]"
execute if score z_hun pearl matches 10.. run data modify storage practice:coords_parser z set value "[{\"score\":{\"name\":\"z_int\",\"objective\":\"pearl\"}},{\"text\":\".\"},{\"score\":{\"name\":\"z_hun\",\"objective\":\"pearl\"}}]"

# distance
execute if score dist_hun pearl matches ..9 run data modify storage practice:coords_parser dist set value "[{\"score\":{\"name\":\"dist_int\",\"objective\":\"pearl\"}},{\"text\":\".0\"},{\"score\":{\"name\":\"dist_hun\",\"objective\":\"pearl\"}}]"
execute if score dist_hun pearl matches 10.. run data modify storage practice:coords_parser dist set value "[{\"score\":{\"name\":\"dist_int\",\"objective\":\"pearl\"}},{\"text\":\".\"},{\"score\":{\"name\":\"dist_hun\",\"objective\":\"pearl\"}}]"
