#Obtained Items
execute if entity @s[tag=Progress] run function ocarina_of_time:items/progress/loop

#Hookshot
execute if entity @s[tag=Hookshot] at @s run function ocarina_of_time:items/hookshot

#Iron Boots
execute if entity @s[tag=Sink] at @s unless entity @e[type=area_effect_cloud,tag=Hookshot] run function ocarina_of_time:items/boots/sink
execute if entity @s[tag=Sink] at @s unless entity @e[type=area_effect_cloud,tag=Hookshot] run function ocarina_of_time:items/boots/sink
execute if entity @s[tag=Sink] at @s unless entity @e[type=area_effect_cloud,tag=Hookshot] run function ocarina_of_time:items/boots/sink

#Ocarina's
execute if entity @s[tag=Songs] at @s run function ocarina_of_time:items/ocarina/loop

#Wallet
execute if entity @s[tag=Wallet] at @s run function ocarina_of_time:items/wallet/wallet

#Fire Eye
execute if entity @s[tag=FireEye] at @s run function ocarina_of_time:enemies/fire_eye/fire_eye

#Silver Rupee
execute if entity @s[tag=SilverRupeeCounter] at @s run function ocarina_of_time:items/silver_rupees/silver_rupee

#Guay
execute if entity @s[tag=Guay] at @s run function ocarina_of_time:enemies/guay/spawn

#Anubis Fire
execute if entity @s[tag=AnubisFire] at @s run function ocarina_of_time:enemies/anubis/fire

#Blue Fire
execute if entity @s[tag=BlueFire] at @s run function ocarina_of_time:enemies/blue_fire

#Time Block
execute if entity @s[tag=TimeBlock] at @s run function ocarina_of_time:items/time_block/loop

#Forest Temple
execute if entity @a[tag=InForestTemple] if entity @s[type=area_effect_cloud,tag=TwistedRoom] at @s run function ocarina_of_time:moving_things/forest_temple/twisted_room_1/entity
execute if entity @a[tag=InForestTemple] if entity @s[type=area_effect_cloud,tag=SlideRoom] at @s run function ocarina_of_time:moving_things/forest_temple/slide_room/slide
execute if entity @a[tag=InForestTemple] if entity @s[type=area_effect_cloud,tag=PoeFire] at @s run function ocarina_of_time:moving_things/forest_temple/poe_fire
