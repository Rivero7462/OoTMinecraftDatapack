execute if entity @s[nbt={HurtTime:10s}] run tag @e[type=armor_stand,tag=GanonBody] add ShakeHead
execute positioned ^ ^ ^1 if entity @e[type=arrow,tag=LightArrow,distance=..2] run tag @e[type=armor_stand,tag=GanonBody] add Stun

#Final Blow
execute if entity @s[tag=Final] run effect clear @s minecraft:resistance
execute if entity @s[tag=Final] run tag @s remove Resist

execute unless entity @s[tag=Final] run tag @s add Resist
