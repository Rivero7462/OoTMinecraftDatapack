execute if entity @s[tag=Resist] run effect give @s minecraft:resistance 1 4 true
execute if entity @s[tag=Invisible] run effect give @s minecraft:invisibility 1000000 0 true
execute if entity @s[nbt={ActiveEffects:[{Id:16b}]}] run effect clear @s night_vision
