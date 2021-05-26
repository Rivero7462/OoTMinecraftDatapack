#Keese
#1
execute as @e[type=bat,tag=Keese49] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 180 ~
execute unless entity @e[type=bat,tag=Keese49,x=-64,y=90,z=863] run fill -64 91 863 -64 91 863 minecraft:air
#2
execute as @e[type=bat,tag=Keese50] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 180 ~
execute unless entity @e[type=bat,tag=Keese50,x=-62,y=90,z=863] run fill -62 91 863 -62 91 863 minecraft:air

#3
execute as @e[type=bat,tag=Keese53] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 180 ~
execute unless entity @e[type=bat,tag=Keese53,x=-51,y=91,z=849] run fill -51 92 849 -51 92 849 minecraft:air
#4
execute as @e[type=bat,tag=Keese54] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 180 ~
execute unless entity @e[type=bat,tag=Keese54,x=-49,y=89,z=849] run fill -49 90 849 -49 90 849 minecraft:air
#5
execute as @e[type=bat,tag=Keese55] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 180 ~
execute unless entity @e[type=bat,tag=Keese55,x=-45,y=89,z=849] run fill -45 90 849 -45 90 849 minecraft:air
#6
execute as @e[type=bat,tag=Keese56] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 180 ~
execute unless entity @e[type=bat,tag=Keese56,x=-43,y=90,z=849] run fill -43 91 849 -43 91 849 minecraft:air

#Spike Traps
execute as @e[type=armor_stand,tag=BladeTrap] at @s run function ocarina_of_time:moving_things/spirit_temple/enemies/blade_trap

#Stalfos
execute unless block -79 84 860 minecraft:gold_block if entity @a[x=-74,y=87,z=861,dx=0,dz=0] run function ocarina_of_time:moving_things/spirit_temple/enemies/stalfos
execute unless entity @e[type=zombie,tag=Stalfos1] run kill @e[type=armor_stand,tag=StalfosShield1,limit=1,sort=nearest]
execute if block -79 84 860 minecraft:gold_block as @e[type=zombie,tag=Stalfos1] at @s if entity @s[y=86,dy=0] run kill @s

#Green Bubble
execute as @e[type=zombie,tag=GreenBubble4] at @s run function ocarina_of_time:moving_things/spirit_temple/enemies/green_bubble

#Wallmaster
execute as @e[type=zombie,tag=Wallmaster] at @s run function ocarina_of_time:moving_things/spirit_temple/enemies/wallmaster

#Lizalfos
#1
execute if block -63 95 861 minecraft:air if entity @a[x=-65,y=99,z=858,dx=3,dz=2] run summon minecraft:zombie -64 99 861 {Tags:["Dinolfos3","Dinolfos","Invisible"],Rotation:[180f],ArmorItems:[{},{},{},{id:dead_horn_coral,Count:1b,tag:{CustomModelData:1}}],Silent:1b,Attributes:[{Name:generic.movement_speed,Base:0.2},{Name:generic.attack_damage,Base:1},{Name:"generic.max_health",Base:30}],Health:30,DeathLootTable:"ocarina_of_time:entities/dinolfos",ArmorDropChances:[0f,0f,0f,0f]}
execute if block -63 95 861 minecraft:air if entity @a[x=-65,y=99,z=858,dx=3,dz=2] run fill -63 95 861 -63 95 861 minecraft:gold_block
#2
execute if block -64 95 861 minecraft:air if entity @a[x=-53,y=99,z=856,dx=4,dz=4] run summon minecraft:zombie -50 99 859 {Tags:["Dinolfos4","Dinolfos","Invisible"],Rotation:[180f],ArmorItems:[{},{},{},{id:dead_horn_coral,Count:1b,tag:{CustomModelData:1}}],Silent:1b,Attributes:[{Name:generic.movement_speed,Base:0.2},{Name:generic.attack_damage,Base:1},{Name:"generic.max_health",Base:30}],Health:30,DeathLootTable:"ocarina_of_time:entities/dinolfos",ArmorDropChances:[0f,0f,0f,0f]}
execute if block -64 95 861 minecraft:air if entity @a[x=-53,y=99,z=856,dx=4,dz=4] run fill -64 95 861 -64 95 861 minecraft:gold_block
#3
execute if block -42 133 857 minecraft:air if entity @a[x=-44,y=137,z=855,dx=4,dz=4] run summon minecraft:zombie -42 136 857 {Tags:["Dinolfos5","Dinolfos","Invisible"],Rotation:[0f],ArmorItems:[{},{},{},{id:dead_horn_coral,Count:1b,tag:{CustomModelData:1}}],Silent:1b,Attributes:[{Name:generic.movement_speed,Base:0.2},{Name:generic.attack_damage,Base:1},{Name:"generic.max_health",Base:30}],Health:30,DeathLootTable:"ocarina_of_time:entities/dinolfos",ArmorDropChances:[0f,0f,0f,0f]}
execute if block -42 133 857 minecraft:air if entity @a[x=-44,y=137,z=855,dx=4,dz=4] run fill -42 133 857 -42 133 857 minecraft:gold_block
#4
execute if block -29 133 869 minecraft:air if entity @a[x=-31,y=137,z=867,dx=4,dz=4] run summon minecraft:zombie -29 136 869 {Tags:["Dinolfos6","Dinolfos","Invisible"],Rotation:[0f],ArmorItems:[{},{},{},{id:dead_horn_coral,Count:1b,tag:{CustomModelData:1}}],Silent:1b,Attributes:[{Name:generic.movement_speed,Base:0.2},{Name:generic.attack_damage,Base:1},{Name:"generic.max_health",Base:30}],Health:30,DeathLootTable:"ocarina_of_time:entities/dinolfos",ArmorDropChances:[0f,0f,0f,0f]}
execute if block -29 133 869 minecraft:air if entity @a[x=-31,y=137,z=867,dx=4,dz=4] run fill -29 133 869 -29 133 869 minecraft:gold_block

#Reset Lizalfos
#1
execute if entity @a[x=-47,y=99,z=856,dx=0,dz=0] run fill -64 95 861 -63 95 861 minecraft:air
execute if entity @a[x=-47,y=99,z=856,dx=0,dz=0] run kill @e[type=zombie,tag=Dinolfos3]
execute if entity @a[x=-47,y=99,z=856,dx=0,dz=0] run kill @e[type=zombie,tag=Dinolfos4]
execute if entity @a[x=-64,y=98,z=842,dx=2,dz=2] run fill -64 95 861 -63 95 861 minecraft:air
execute if entity @a[x=-64,y=98,z=842,dx=2,dz=2] run kill @e[type=zombie,tag=Dinolfos3]
execute if entity @a[x=-64,y=98,z=842,dx=2,dz=2] run kill @e[type=zombie,tag=Dinolfos4]
#2
execute if entity @a[x=-33,y=136,z=857,dx=0,dz=0] run fill -42 133 857 -42 133 857 minecraft:air
execute if entity @a[x=-33,y=136,z=857,dx=0,dz=0] run fill -29 133 869 -29 133 869 minecraft:air
execute if entity @a[x=-33,y=136,z=857,dx=0,dz=0] run kill @e[type=zombie,tag=Dinolfos5]
execute if entity @a[x=-33,y=136,z=857,dx=0,dz=0] run kill @e[type=zombie,tag=Dinolfos6]

#Room 1
execute if entity @a[x=-53,y=85,z=880,dx=0,dz=0] unless block -64 83 872 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/room_1/summon
execute if entity @a[x=-51,y=85,z=880,dx=0,dz=0] unless block -63 83 872 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/room_1/reset
execute if block -64 83 872 minecraft:gold_block unless block -63 83 872 minecraft:gold_block unless entity @e[type=zombie,tag=Armos13] unless entity @e[type=bat,tag=Keese49] unless entity @e[type=bat,tag=Keese50] unless entity @e[type=bat,tag=Keese51] unless entity @e[type=bat,tag=Keese52] run function ocarina_of_time:moving_things/spirit_temple/enemies/room_1/finish

#Room 2
execute if entity @a[x=-56,y=88,z=835,dx=0,dz=0] unless block -62 88 817 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/room_2/summon
execute if entity @a[x=-57,y=88,z=836,dx=0,dz=0] unless block -62 88 817 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/room_2/summon
execute if entity @a[x=-73,y=88,z=837,dx=2,dz=2] unless block -62 88 817 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/room_2/summon
execute if block -62 88 817 minecraft:gold_block unless block -63 88 817 minecraft:gold_block unless entity @e[type=zombie,tag=Anubis1] run function ocarina_of_time:moving_things/spirit_temple/enemies/room_2/finish

#Room 3
execute if entity @a[x=3,y=110,z=875,dx=0,dz=0] unless block 10 110 870 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/room_3/summon
execute if block 10 110 870 minecraft:gold_block unless block 9 110 870 minecraft:gold_block unless entity @e[type=zombie,tag=Beamos13] unless entity @e[type=zombie,tag=Anubis2] unless entity @e[type=zombie,tag=Anubis3] unless entity @e[type=zombie,tag=Anubis4] run function ocarina_of_time:moving_things/spirit_temple/enemies/room_3/finish

#Room 4
execute if entity @a[x=19,y=110,z=885,dx=0,dz=0] unless block 33 111 882 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/room_4/summon
execute if entity @a[x=25,y=110,z=893,dx=0,dz=0] unless block 33 111 882 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/room_4/summon
execute if entity @a[x=25,y=110,z=895,dx=0,dz=0] if block 33 111 882 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/room_4/reset
execute if entity @a[x=17,y=110,z=885,dx=0,dz=0] if block 33 111 882 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/room_4/reset

#Iron Knuckle 1
execute if entity @a[x=-78,y=116,z=913,dx=0,dz=0] unless block -64 114 917 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/iron_knuckle_1/summon
execute if entity @a[x=-78,y=116,z=911,dx=0,dz=0] if block -64 114 917 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/iron_knuckle_1/reset
execute if block -64 114 917 minecraft:gold_block unless block -65 114 917 minecraft:gold_block unless entity @e[type=zombie,tag=IronKnuckle] run function ocarina_of_time:moving_things/spirit_temple/enemies/iron_knuckle_1/finish

#Iron Knuckle 2
execute if entity @a[x=25,y=116,z=913,dx=0,dz=0] unless block 12 114 917 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/iron_knuckle_2/summon
execute if entity @a[x=25,y=116,z=911,dx=0,dz=0] if block 12 114 917 minecraft:gold_block unless block 11 114 917 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/iron_knuckle_2/reset
execute if block 12 114 917 minecraft:gold_block unless block 11 114 917 minecraft:gold_block unless entity @e[type=zombie,tag=IronKnuckle] run function ocarina_of_time:moving_things/spirit_temple/enemies/iron_knuckle_2/finish

#Nabooru Knuckle
execute if block -25 112 799 minecraft:gold_block unless block -24 112 799 minecraft:gold_block unless entity @e[type=zombie,tag=NabooruKnuckle] run function ocarina_of_time:moving_things/spirit_temple/enemies/nabooru_knuckle/finish
