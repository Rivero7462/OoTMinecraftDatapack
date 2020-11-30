execute if entity @s[tag=Fire] run function ocarina_of_time:entity_setup/fire_resist
execute if entity @s[tag=Resist] run effect give @s minecraft:resistance 1 4 true
execute if entity @s[tag=Invisible] run effect give @s minecraft:invisibility 1000000 0 true

#Flare Dancer Fire
execute if entity @s[tag=TinyFire] at @s run function ocarina_of_time:enemies/flare_dancer/tiny_fire
