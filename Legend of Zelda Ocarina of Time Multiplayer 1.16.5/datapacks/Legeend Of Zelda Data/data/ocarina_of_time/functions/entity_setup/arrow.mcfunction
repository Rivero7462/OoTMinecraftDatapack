#Fairy Bow
execute at @s unless entity @s[nbt={Potion:"minecraft:healing"}] unless entity @s[nbt={Potion:"minecraft:night_vision"}] unless entity @s[nbt={Potion:"minecraft:slow_falling"}] unless entity @s[tag=LightArrow] run function ocarina_of_time:items/fairy_bow/arrow
execute if entity @s[nbt={Potion:"minecraft:healing"}] at @s run function ocarina_of_time:items/fairy_bow/fire_arrow
execute if entity @s[nbt={Potion:"minecraft:night_vision"}] at @s run function ocarina_of_time:items/fairy_bow/ice_arrow
execute if entity @s[nbt={Potion:"minecraft:slow_falling"}] at @s run function ocarina_of_time:items/fairy_bow/light_arrow
execute if entity @s[tag=LightArrow] at @s run function ocarina_of_time:items/fairy_bow/light_arrow
