scoreboard players operation C color = V color
scoreboard players operation C color *= S color
scoreboard players operation C color /= 100 c

scoreboard players operation X color = C color

scoreboard players set a color 100

scoreboard players operation b color = H color
scoreboard players operation b color *= 100 c
scoreboard players operation b color /= 60 c
scoreboard players operation b color %= 200 c
scoreboard players remove b color 100
execute if score b color matches ..0 run scoreboard players operation b color *= -1 c

scoreboard players operation a color -= b color
scoreboard players operation X color *= a color
scoreboard players operation X color /= 100 c

scoreboard players reset a color
scoreboard players reset b color

scoreboard players operation m color = V color
scoreboard players operation m color -= C color

scoreboard players set R color 0
scoreboard players set G color 0
scoreboard players set B color 0

execute if score H color matches 0..59 run scoreboard players operation R color = C color
execute if score H color matches 0..59 run scoreboard players operation G color = X color

execute if score H color matches 60..119 run scoreboard players operation R color = X color
execute if score H color matches 60..119 run scoreboard players operation G color = C color

execute if score H color matches 120..179 run scoreboard players operation G color = C color
execute if score H color matches 120..179 run scoreboard players operation B color = X color

execute if score H color matches 180..239 run scoreboard players operation G color = X color
execute if score H color matches 180..239 run scoreboard players operation B color = C color

execute if score H color matches 240..299 run scoreboard players operation R color = X color
execute if score H color matches 240..299 run scoreboard players operation B color = C color

execute if score H color matches 300..359 run scoreboard players operation R color = C color
execute if score H color matches 300..359 run scoreboard players operation B color = X color

scoreboard players operation R color += m color
scoreboard players operation G color += m color
scoreboard players operation B color += m color

scoreboard players operation R color *= 255 c
scoreboard players operation G color *= 255 c
scoreboard players operation B color *= 255 c

scoreboard players operation R color /= 100 c
scoreboard players operation G color /= 100 c
scoreboard players operation B color /= 100 c


scoreboard players operation value hex = R color
function practice:hex_convert
data modify storage practice:color color[0] set from storage practice:color bytes

scoreboard players operation value hex = G color
function practice:hex_convert
data modify storage practice:color color[1] set from storage practice:color bytes

scoreboard players operation value hex = B color
function practice:hex_convert
data modify storage practice:color color[2] set from storage practice:color bytes

data modify storage practice:color color_string set value "[{\"text\":\"{\\\"color\\\":\\\"#\"},{\"nbt\":\"color\",\"storage\":\"practice:color\",\"interpret\":true},{\"text\":\"\\\",\\\"text\\\":\\\"O\\\"}\"}]"

data modify storage practice:color color_string_2 set value "{\"nbt\":\"color_string\",\"storage\":\"practice:color\",\"interpret\":true}"

#tellraw @a {"nbt":"color_string","storage":"practice:color","interpret":true}