scoreboard players operation n1 hex = value hex
scoreboard players operation n1 hex %= 16 c

scoreboard players operation n2 hex = value hex
scoreboard players operation n2 hex /= 16 c

scoreboard players operation a hex = n1 hex
function practice:hex_letters
data modify storage practice:color bytes[1] set from storage practice:color bytes[0]
scoreboard players operation a hex = n2 hex
function practice:hex_letters

#data modify storage practice:hex string set value "[{\"nbt\":\"data\",\"storage\":\"practice:hex\",\"interpret\":true}]"

#tellraw @a {"nbt":"string","storage":"practice:hex","interpret":true}