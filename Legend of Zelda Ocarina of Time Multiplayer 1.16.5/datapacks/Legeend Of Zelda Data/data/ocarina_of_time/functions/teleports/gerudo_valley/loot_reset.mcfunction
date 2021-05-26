#Signs
execute unless block 385 72 2049 minecraft:oak_sign run clone 385 72 2049 385 72 2049 384 75 2049

#Cucco
kill @e[type=chicken,tag=GerudoCucco]
execute unless entity @a[tag=Adult] run summon minecraft:chicken 394 76 2045 {Rotation:[0f],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0}],Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","GerudoCucco","Resist"]}

#Bean Spots
execute if entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean4] run clone 360 29 2038 362 29 2040 364 36 2038
execute unless entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean4] run fill 365 36 2039 365 36 2039 minecraft:pumpkin_stem[age=6]

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone27] run summon minecraft:armor_stand 365 35 1994 {Tags:["GossipStone27","GossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}

#Stones
execute if entity @a[tag=Adult] run fill 363 76 2025 363 76 2025 minecraft:granite_slab
execute if entity @a[tag=Adult] run fill 360 76 2026 360 76 2026 minecraft:granite_slab
execute if entity @a[tag=Adult] run fill 358 76 2023 358 76 2023 minecraft:granite_slab
execute if entity @a[tag=Adult] run fill 361 76 2022 361 76 2022 minecraft:granite_slab

#Grotto
fill 349 75 2020 349 75 2020 minecraft:terracotta
clone 333 36 2040 337 36 2046 333 37 2040

#Silver Rock
fill 384 64 2069 383 65 2070 minecraft:dead_bubble_coral_block
