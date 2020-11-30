#Rocks
scoreboard players set @a HoldingRock 1
fill 425 54 404 425 54 404 minecraft:granite_slab
fill 426 54 402 426 54 402 minecraft:granite_slab
fill 426 54 406 426 54 406 minecraft:granite_slab
fill 428 54 407 428 54 407 minecraft:granite_slab
fill 428 54 401 428 54 401 minecraft:granite_slab
fill 430 54 402 430 54 402 minecraft:granite_slab
fill 430 54 406 430 54 406 minecraft:granite_slab
fill 431 54 404 431 54 404 minecraft:granite_slab
fill 445 54 417 445 54 417 minecraft:granite_slab
fill 446 54 415 446 54 415 minecraft:granite_slab
fill 446 54 419 446 54 419 minecraft:granite_slab
fill 448 54 420 448 54 420 minecraft:granite_slab
fill 448 54 414 448 54 414 minecraft:granite_slab
fill 450 54 415 450 54 415 minecraft:granite_slab
fill 450 54 419 450 54 419 minecraft:granite_slab
fill 451 54 417 451 54 417 minecraft:granite_slab
fill 391 61 469 391 61 469 minecraft:granite_slab

#Leever
scoreboard players set @e[type=area_effect_cloud,tag=LeeverSpawn] timer 0

#Fairy Fountain
fill 359 55 456 347 57 444 minecraft:air replace minecraft:water

#Bean Spots
execute if entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean3] run clone 396 48 403 398 48 405 398 55 391
execute unless entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean3] run fill 399 55 392 399 55 392 minecraft:pumpkin_stem[age=6]

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone28] run summon minecraft:armor_stand 374 59 376 {Tags:["GossipStone28","GossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}

#Silver Rock
fill 448 55 427 447 54 426 minecraft:dead_bubble_coral_block
