execute if entity @s[tag=Invisible] run effect give @s minecraft:invisibility 1000000 0 true
execute if entity @s[tag=Resist] run effect give @s minecraft:resistance 1 4 true

#Scrub Shop
execute if entity @s[tag=ScrubShop] at @s run function ocarina_of_time:enemies/deku_scrub/shop
