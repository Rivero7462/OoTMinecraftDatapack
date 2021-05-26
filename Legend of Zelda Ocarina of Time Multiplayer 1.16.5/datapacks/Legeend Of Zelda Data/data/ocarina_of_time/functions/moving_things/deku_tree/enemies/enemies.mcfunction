#Deku Babas
#1
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody4] if entity @e[type=area_effect_cloud,tag=DekuBabaHealth4,scores={lifetime=300..}] run function ocarina_of_time:moving_things/deku_tree/enemies/deku_baba1
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody4] run kill @e[type=wither_skeleton,tag=DekuBaba4]
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody4] run kill @e[type=armor_stand,tag=DekuBaba4]
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody4] run scoreboard players add @e[type=area_effect_cloud,tag=DekuBabaHealth4] lifetime 1
#2
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody5] if entity @e[type=area_effect_cloud,tag=DekuBabaHealth5,scores={lifetime=300..}] run function ocarina_of_time:moving_things/deku_tree/enemies/deku_baba2
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody5] run kill @e[type=wither_skeleton,tag=DekuBaba5]
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody5] run kill @e[type=armor_stand,tag=DekuBaba5]
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody5] run scoreboard players add @e[type=area_effect_cloud,tag=DekuBabaHealth5] lifetime 1
#3
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody6] if entity @e[type=area_effect_cloud,tag=DekuBabaHealth6,scores={lifetime=300..}] run function ocarina_of_time:moving_things/deku_tree/enemies/deku_baba3
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody6] run kill @e[type=wither_skeleton,tag=DekuBaba6]
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody6] run kill @e[type=armor_stand,tag=DekuBaba6]
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody6] run scoreboard players add @e[type=area_effect_cloud,tag=DekuBabaHealth6] lifetime 1
#4
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody7] if entity @e[type=area_effect_cloud,tag=DekuBabaHealth7,scores={lifetime=300..}] run function ocarina_of_time:moving_things/deku_tree/enemies/deku_baba4
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody7] run kill @e[type=wither_skeleton,tag=DekuBaba7]
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody7] run kill @e[type=armor_stand,tag=DekuBaba7]
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody7] run scoreboard players add @e[type=area_effect_cloud,tag=DekuBabaHealth7] lifetime 1
#5
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody8] if entity @e[type=area_effect_cloud,tag=DekuBabaHealth8,scores={lifetime=300..}] run function ocarina_of_time:moving_things/deku_tree/enemies/deku_baba5
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody8] run kill @e[type=wither_skeleton,tag=DekuBaba8]
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody8] run kill @e[type=armor_stand,tag=DekuBaba8]
execute unless entity @e[type=wither_skeleton,tag=DekuBabaBody8] run scoreboard players add @e[type=area_effect_cloud,tag=DekuBabaHealth8] lifetime 1

#Deku Scrub
#9 Special
execute as @e[type=zombie,tag=DekuScrub9,scores={lifetime=146..}] run tp @s 1387 11 -661
execute as @e[type=zombie,tag=DekuScrub9,tag=Stun] at @a if block 1393 8 -650 minecraft:gold_block if block 1393 8 -649 minecraft:gold_block run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ 1 1
execute as @e[type=zombie,tag=DekuScrub9,tag=Stun] if block 1393 8 -650 minecraft:gold_block if block 1393 8 -649 minecraft:gold_block run tag @s add Scared
execute as @e[type=zombie,tag=DekuScrub9,tag=Scared] run tag @s remove Stun
execute as @e[type=zombie,tag=DekuScrub9,tag=Scared] run fill 1393 8 -650 1393 8 -649 minecraft:air
execute as @e[type=zombie,tag=DekuScrub9,tag=Stun] unless entity @s[tag=Scared] if entity @e[type=zombie,tag=DekuScrub10,tag=Stun] if entity @e[type=zombie,tag=DekuScrub11,tag=Stun] run function ocarina_of_time:moving_things/deku_tree/enemies/deku_scrubs
execute if block 1387 10 -661 minecraft:dirt unless entity @e[type=zombie,tag=DekuScrub9] run kill @e[type=zombie,tag=DekuScrub10]
execute if block 1387 10 -661 minecraft:dirt unless entity @e[type=zombie,tag=DekuScrub9] run kill @e[type=zombie,tag=DekuScrub11]
#10 Special
execute as @e[type=zombie,tag=DekuScrub10,scores={lifetime=146..}] run tp @s 1392 11 -650
execute as @e[type=zombie,tag=DekuScrub10,tag=Stun,scores={time=1}] if block 1393 8 -649 minecraft:air run fill 1393 8 -650 1393 8 -650 minecraft:gold_block

#11 Special
execute as @e[type=zombie,tag=DekuScrub11,scores={lifetime=147..}] run tp @s 1387 11 -641
execute as @e[type=zombie,tag=DekuScrub11,tag=Stun,scores={time=1}] if block 1393 8 -650 minecraft:gold_block run fill 1393 8 -649 1393 8 -649 minecraft:gold_block

#Larva
#1
execute as @e[type=armor_stand,tag=LarvaEgg1,tag=Break] at @s run summon minecraft:zombie ~ ~2 ~ {Tags:["LarvaHealth1","LarvaHealth"],ArmorItems:[{},{},{},{id:tube_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/gohma_larva",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.3}],Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}],ArmorDropChances:[0f,0f,0f,0f]}
#2
execute as @e[type=armor_stand,tag=LarvaEgg2,tag=Break] at @s run summon minecraft:zombie ~ ~2 ~ {Tags:["LarvaHealth2","LarvaHealth"],ArmorItems:[{},{},{},{id:tube_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/gohma_larva",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.3}],Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}],ArmorDropChances:[0f,0f,0f,0f]}
#3
execute as @e[type=armor_stand,tag=LarvaEgg3,tag=Break] at @s run summon minecraft:zombie ~ ~2 ~ {Tags:["LarvaHealth3","LarvaHealth"],ArmorItems:[{},{},{},{id:tube_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/gohma_larva",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.3}],Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}],ArmorDropChances:[0f,0f,0f,0f]}
#4
execute as @e[type=armor_stand,tag=LarvaEgg4,tag=Break] at @s run summon minecraft:zombie ~ ~2 ~ {Tags:["LarvaHealth4","LarvaHealth"],ArmorItems:[{},{},{},{id:tube_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/gohma_larva",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.3}],Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}],ArmorDropChances:[0f,0f,0f,0f]}
#5
execute as @e[type=armor_stand,tag=LarvaEgg5,tag=Break] at @s run summon minecraft:zombie ~ ~2 ~ {Tags:["LarvaHealth5","LarvaHealth"],ArmorItems:[{},{},{},{id:tube_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/gohma_larva",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.3}],Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}],ArmorDropChances:[0f,0f,0f,0f]}
#6
execute as @e[type=armor_stand,tag=LarvaEgg6,tag=Break] at @s run summon minecraft:zombie ~ ~2 ~ {Tags:["LarvaHealth6","LarvaHealth"],ArmorItems:[{},{},{},{id:tube_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/gohma_larva",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.3}],Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}],ArmorDropChances:[0f,0f,0f,0f]}
#Extra
execute as @e[type=armor_stand,tag=LarvaEgg,tag=Break] run kill @s

#Skulltula
#1
execute as @e[type=zombie,tag=Skulltula1] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 1356 52 -684 -90 ~
#2
execute as @e[type=zombie,tag=Skulltula2] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 1373 92 -642 -135 ~
#3
execute as @e[type=zombie,tag=Skulltula3] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 1373 92 -632 -45 ~
#4
execute as @e[type=zombie,tag=Skulltula4] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 1361 92 -637 90 ~
#5
execute as @e[type=zombie,tag=Skulltula5] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 1363 91 -668 -90 ~
#6
execute as @e[type=zombie,tag=Skulltula6] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 1341 49 -672 0 ~
#7
execute as @e[type=zombie,tag=Skulltula7] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 1399 52 -691 90 ~
