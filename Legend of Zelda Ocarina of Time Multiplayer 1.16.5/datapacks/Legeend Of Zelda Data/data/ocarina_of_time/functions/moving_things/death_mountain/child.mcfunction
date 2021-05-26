#Bomb
fill 2015 111 1451 2015 111 1451 minecraft:jungle_leaves[persistent=true]

#Owl
execute if block 2027 151 1347 minecraft:gold_block unless entity @e[type=armor_stand,tag=OwlStand9] run summon minecraft:armor_stand 2027 159.2 1347 {Tags:["OwlStand9","Npc"],CustomName:"\"Kaepora Gaebora\"",CustomNameVisible:0b,Rotation:[0f],ArmorItems:[{},{},{},{id:infested_stone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}

#Boulders
fill 2020 102 1453 2030 102 1453 minecraft:air
fill 2008 86 1498 2009 85 1497 minecraft:air
fill 2006 87 1482 2005 88 1481 minecraft:air
fill 2005 87 1474 2004 88 1473 minecraft:air
fill 2012 94 1457 2013 93 1456 minecraft:air
fill 2014 94 1459 2015 93 1460 minecraft:air
fill 2012 99 1471 2011 98 1472 minecraft:air
fill 2033 102 1496 2034 103 1495 minecraft:air
fill 2017 112 1445 2018 113 1446 minecraft:air
fill 2027 117 1403 2028 116 1402 minecraft:air
fill 2022 120 1391 2021 119 1390 minecraft:air
fill 2026 122 1382 2027 121 1381 minecraft:air

#Npc's
execute as @e[type=armor_stand,tag=Goron10] unless entity @a[tag=FireStone] unless entity @s[x=2013,y=92.5,z=1455,dx=0,dz=0] if block 2031 101 1420 minecraft:gold_block run tp @s 2013 91.9 1455
execute as @e[type=armor_stand,tag=Goron1] unless entity @s[x=2023,y=102.5,z=1487,dx=0,dz=0] if block 2031 101 1420 minecraft:gold_block run tp @s 2023 101.9 1487
execute as @e[type=armor_stand,tag=Goron7] unless entity @s[x=2016,y=111.5,z=1453,dx=0,dz=0] if block 2031 101 1420 minecraft:gold_block run tp @s 2016 110.9 1453

#Biggoron
execute as @e[type=giant,tag=Biggoron] at @s run function ocarina_of_time:moving_things/death_mountain/biggoron/biggoron_2

#Bean Spot
fill 2011 92 1451 2011 92 1451 minecraft:farmland[moisture=0]
execute if entity @a[x=2011,y=93,z=1451,dx=0,dz=0] unless entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean1] if entity @a[nbt={SelectedItem:{tag:{MagicBean:1b}}}] positioned 2011 93 1451 run function ocarina_of_time:items/magic_bean
execute if block 2011 93 1451 minecraft:pumpkin_stem[age=6] as @e[type=area_effect_cloud,tag=BeanSpot] unless entity @s[tag=PlantBean1] run tag @s add PlantBean1

#Gold Skulltula
execute unless block 2013 92 1451 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=2010,y=93,z=1450,dx=2,dz=2] run summon minecraft:zombie 2011 93 1453 {Tags:["GoldSkull21","GoldSkull","Floor","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}],Health:7,Invulnerable:1b,PersistenceRequired:1b,IsBaby:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/gold_skulltula",ArmorDropChances:[0f,0f,0f,0f]}
execute unless block 2013 92 1451 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=2010,y=93,z=1450,dx=2,dz=2] run fill 2013 92 1451 2013 92 1451 minecraft:gold_block
execute unless block 2013 92 1451 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=2010,y=93,z=1450,dx=2,dz=2] run kill @s
