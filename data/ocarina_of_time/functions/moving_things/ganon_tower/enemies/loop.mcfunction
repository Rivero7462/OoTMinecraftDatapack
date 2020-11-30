#Dinolfos Room
execute unless block -500 36 1616 minecraft:gold_block if entity @a[x=-509,y=39,z=1616,dx=0,dz=0] run function ocarina_of_time:moving_things/ganon_tower/enemies/dinolfos_room/summon
execute unless block -500 36 1617 minecraft:gold_block if block -500 36 1616 minecraft:gold_block unless entity @e[type=zombie,tag=DinolfosRoom] run function ocarina_of_time:moving_things/ganon_tower/enemies/dinolfos_room/finish

#Stalfos Room
execute unless block -488 48 1613 minecraft:gold_block if entity @a[x=-500,y=46,z=1607,dx=0,dz=0] run function ocarina_of_time:moving_things/ganon_tower/enemies/stalfos_room/summon
execute unless block -489 48 1613 minecraft:gold_block if block -488 48 1613 minecraft:gold_block unless entity @e[type=zombie,tag=StalfosRoom] run function ocarina_of_time:moving_things/ganon_tower/enemies/stalfos_room/finish

#Stalfos
execute unless entity @e[type=zombie,tag=Stalfos1] run kill @e[type=armor_stand,tag=StalfosShield1,limit=1,sort=nearest]
execute unless entity @e[type=zombie,tag=Stalfos2] run kill @e[type=armor_stand,tag=StalfosShield2,limit=1,sort=nearest]

#Iron Knuckle Room
execute unless block -497 55 1628 minecraft:gold_block if entity @a[x=-491,y=53,z=1616,dx=0,dz=0] run function ocarina_of_time:moving_things/ganon_tower/enemies/iron_knuckle_room/summon
execute unless block -497 55 1627 minecraft:gold_block if block -497 55 1628 minecraft:gold_block unless entity @e[type=zombie,tag=IronKuckleRoom] run function ocarina_of_time:moving_things/ganon_tower/enemies/iron_knuckle_room/finish
