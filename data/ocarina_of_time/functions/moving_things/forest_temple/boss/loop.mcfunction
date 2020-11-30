#Arena
execute as @a at @s if entity @s[y=30.3,dy=0] if block ~ ~-1 ~ minecraft:acacia_fence run tp @a 898 27 -1205

#Setup
execute unless block 904 24 -1205 minecraft:gold_block run fill 904 27 -1203 904 27 -1201 minecraft:acacia_fence replace minecraft:air
execute unless block 904 24 -1205 minecraft:gold_block run summon minecraft:horse 898 22 -1205 {Tags:["PhantomHorse","Boss","Resist"],ArmorItems:[{},{},{},{id:"minecraft:iron_horse_armor",Count:1b}],Variant:4,NoAI:1b,Silent:1,Invulnerable:1b,Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
execute unless block 904 24 -1205 minecraft:gold_block run summon minecraft:zombie 898 22 -1205 {Tags:["PhantomGanon","Boss","Resist"],Health:55,Attributes:[{Name:"generic.max_health",Base:55},{Name:"generic.attack_damage",Base:0}],NoAI:1b,Invulnerable:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:4996914}}},{id:"leather_leggings",Count:1b,tag:{display:{color:3289650}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:1644825}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Ganon\""},SkullOwner:{Id:[I;1626903851,-1610135650,-1624482959,1407199076],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTA0MDU4ZDQ1NGU1OGMzMGNhZDU5NzIxZDNkOWRjODI5OWQ5OTNkMGNkYjE4N2RkYmJmNDQyZmE3NGQyYjQ2MSJ9fX0="}]}}}}],HandItems:[{id:trident,Count:1b},{}],Silent:1,HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/nothing"}
fill 904 24 -1205 904 24 -1205 minecraft:gold_block

#Stage 1
execute as @e[type=horse,tag=PhantomHorse] at @s run function ocarina_of_time:moving_things/forest_temple/boss/stage_1

#Back Phantom Painting
execute as @e[type=armor_stand,tag=BackPainting] at @s run function ocarina_of_time:moving_things/forest_temple/boss/back_painting

#Real Painting
execute as @e[type=armor_stand,tag=RealPainting] at @s run function ocarina_of_time:moving_things/forest_temple/boss/real_painting

#Fake Painting
execute as @e[type=armor_stand,tag=FakePainting] at @s run function ocarina_of_time:moving_things/forest_temple/boss/fake_painting

#Stage 2
execute as @e[type=zombie,tag=PhantomGanon,tag=Stage2] at @s run function ocarina_of_time:moving_things/forest_temple/boss/stage_2

#Energy Ball
execute as @e[type=zombie,tag=EnergyBall] at @s run function ocarina_of_time:moving_things/forest_temple/boss/energy_ball

#No Ride Horse
execute as @a at @e[type=horse] if entity @s[distance=..1,nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run tp @s 898 27 -1205
