#West
execute if entity @s[y_rotation=90] run tag @s add West
execute if entity @s[y_rotation=90] run tag @s remove East
execute if entity @s[y_rotation=90] run tag @s remove South
execute if entity @s[y_rotation=90] run tag @s remove North
#East
execute if entity @s[y_rotation=-90] run tag @s add East
execute if entity @s[y_rotation=-90] run tag @s remove West
execute if entity @s[y_rotation=-90] run tag @s remove South
execute if entity @s[y_rotation=-90] run tag @s remove North
#South
execute if entity @s[y_rotation=0] run tag @s add South
execute if entity @s[y_rotation=0] run tag @s remove East
execute if entity @s[y_rotation=0] run tag @s remove West
execute if entity @s[y_rotation=0] run tag @s remove North
#North
execute if entity @s[y_rotation=180] run tag @s add North
execute if entity @s[y_rotation=180] run tag @s remove East
execute if entity @s[y_rotation=180] run tag @s remove South
execute if entity @s[y_rotation=180] run tag @s remove West
