# timer minutes
execute if score minutes timer matches 0 run data modify storage practice:timeparser minutes set value "{\"text\":\"\"}"
execute if score minutes timer matches 1.. run data modify storage practice:timeparser minutes set value "[{\"score\":{\"name\":\"minutes\",\"objective\":\"timer\"}},{\"text\":\"m \"}]"

# timer seconds
execute if score thousth timer matches 10.. run data modify storage practice:timeparser seconds set value "[{\"score\":{\"name\":\"seconds\",\"objective\":\"timer\"}},{\"text\":\".\"},{\"score\":{\"name\":\"thousth\",\"objective\":\"timer\"}},{\"text\":\"s\"}]"
execute if score thousth timer matches ..9 run data modify storage practice:timeparser seconds set value "[{\"score\":{\"name\":\"seconds\",\"objective\":\"timer\"}},{\"text\":\".0\"},{\"score\":{\"name\":\"thousth\",\"objective\":\"timer\"}},{\"text\":\"s\"}]"

# diff minutes
execute if score minutes timer_diff matches 0 run data modify storage practice:timeparser diff_minutes set value "{\"text\":\"\"}"
execute if score minutes timer_diff matches 1.. run data modify storage practice:timeparser diff_minutes set value "[{\"score\":{\"name\":\"minutes\",\"objective\":\"timer_diff\"}},{\"text\":\"m \"}]"


# diff seconds
execute if score thousth timer_diff matches 10.. run data modify storage practice:timeparser diff_seconds set value "[{\"score\":{\"name\":\"seconds\",\"objective\":\"timer_diff\"}},{\"text\":\".\"},{\"score\":{\"name\":\"thousth\",\"objective\":\"timer_diff\"}},{\"text\":\"s\"}]"
execute if score thousth timer_diff matches ..9 run data modify storage practice:timeparser diff_seconds set value "[{\"score\":{\"name\":\"seconds\",\"objective\":\"timer_diff\"}},{\"text\":\".0\"},{\"score\":{\"name\":\"thousth\",\"objective\":\"timer_diff\"}},{\"text\":\"s\"}]"

# diff sign
execute if score sign timer_diff matches 1 run data modify storage practice:timeparser diff_sign set value "{\"color\":\"red\",\"text\":\"+\"}"
execute if score sign timer_diff matches -1 run data modify storage practice:timeparser diff_sign set value "{\"color\":\"green\",\"text\":\"-\"}"

# String assembly

# assemble time string
data modify storage practice:timeparser time_string set value "[{\"color\":\"gold\",\"nbt\":\"minutes\",\"storage\":\"practice:timeparser\",\"interpret\":true},{\"nbt\":\"seconds\",\"storage\":\"practice:timeparser\",\"interpret\":true}]"

# assemble time diff string
execute unless score compare timer_diff matches 1.. run data modify storage practice:timeparser time_diff_string set value "{\"text\":\"\",\"color\":\"gray\"}"

execute if score compare timer_diff matches 1.. run data modify storage practice:timeparser time_diff_string set value "[[{\"color\":\"gray\",\"text\":\" [\"}],[{\"nbt\":\"diff_sign\",\"storage\":\"practice:timeparser\",\"interpret\":true},{\"nbt\":\"diff_minutes\",\"storage\":\"practice:timeparser\",\"interpret\":true},{\"nbt\":\"diff_seconds\",\"storage\":\"practice:timeparser\",\"interpret\":true}],[{\"color\":\"gray\",\"text\":\"]\"}]]"