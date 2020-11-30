#Poes
#1
execute if entity @a[x=1618,y=76,z=1941,dx=6,dz=6] if block 1621 75 1944 minecraft:player_head run summon minecraft:zombie 1621 76 1944 {Tags:["Poe1","Poe","Invisible","Fire"],NoGravity:1b,Silent:1b,Health:10,Attributes:[{Name:"generic.attack_damage",Base:1}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @a[x=1618,y=76,z=1941,dx=6,dz=6] if block 1621 75 1944 minecraft:player_head run summon minecraft:armor_stand 1621 76 1944 {Tags:["Poe1","Poe"],Invisible:1b,NoGravity:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:18}}],Pose:{RightArm:[-50f,40f,0f]}}
execute if entity @a[x=1618,y=76,z=1941,dx=6,dz=6] if block 1621 75 1944 minecraft:player_head run fill 1621 75 1944 1621 75 1944 minecraft:air
execute as @e[type=zombie,tag=Poe1] at @s unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=101..140}] run tp @e[type=armor_stand,tag=Poe1] ~ ~ ~ facing entity @p
execute at @e[type=armor_stand,tag=Poe1] as @e[type=zombie,scores={lifetime=101..140},tag=Poe1] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] run tp @s ~ ~ ~ facing entity @p
execute unless entity @e[type=zombie,tag=Poe1] run tag @e[type=armor_stand,tag=Poe1] add Die
#2
execute if entity @a[x=1616,y=74,z=1960,dx=6,dz=6] if block 1619 73 1962 minecraft:player_head run summon minecraft:zombie 1619 74 1962 {Tags:["Poe2","Poe","Invisible","Fire"],NoGravity:1b,Silent:1b,Health:10,Attributes:[{Name:"generic.attack_damage",Base:1}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @a[x=1616,y=74,z=1960,dx=6,dz=6] if block 1619 73 1962 minecraft:player_head run summon minecraft:armor_stand 1619 74 1962 {Tags:["Poe2","Poe"],Invisible:1b,NoGravity:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:18}}],Pose:{RightArm:[-50f,40f,0f]}}
execute if entity @a[x=1616,y=74,z=1960,dx=6,dz=6] if block 1619 73 1962 minecraft:player_head run fill 1619 73 1962 1619 73 1962 minecraft:air
execute as @e[type=zombie,tag=Poe2] at @s unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=101..140}] run tp @e[type=armor_stand,tag=Poe2] ~ ~ ~ facing entity @p
execute at @e[type=armor_stand,tag=Poe2] as @e[type=zombie,scores={lifetime=101..140},tag=Poe2] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] run tp @s ~ ~ ~ facing entity @p
execute unless entity @e[type=zombie,tag=Poe2] run tag @e[type=armor_stand,tag=Poe2] add Die
#3
execute if entity @a[x=1634,y=78,z=1952,dx=6,dz=6] if block 1637 77 1955 minecraft:player_head run summon minecraft:zombie 1637 78 1955 {Tags:["Poe3","Poe","Invisible","Fire"],NoGravity:1b,Silent:1b,Health:10,Attributes:[{Name:"generic.attack_damage",Base:1}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @a[x=1634,y=78,z=1952,dx=6,dz=6] if block 1637 77 1955 minecraft:player_head run summon minecraft:armor_stand 1637 78 1955 {Tags:["Poe3","Poe"],Invisible:1b,NoGravity:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:18}}],Pose:{RightArm:[-50f,40f,0f]}}
execute if entity @a[x=1634,y=78,z=1952,dx=6,dz=6] if block 1637 77 1955 minecraft:player_head run fill 1637 77 1955 1637 77 1955 minecraft:air
execute as @e[type=zombie,tag=Poe3] at @s unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=101..140}] run tp @e[type=armor_stand,tag=Poe3] ~ ~ ~ facing entity @p
execute at @e[type=armor_stand,tag=Poe3] as @e[type=zombie,scores={lifetime=101..140},tag=Poe3] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] run tp @s ~ ~ ~ facing entity @p
execute unless entity @e[type=zombie,tag=Poe3] run tag @e[type=armor_stand,tag=Poe3] add Die

#Redead
#1
execute as @e[type=wither_skeleton,tag=Redead1] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn1] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead1] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn1,distance=...1] run tp @s 1589 50 1955 180 60
#2
execute as @e[type=wither_skeleton,tag=Redead2] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn2] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead2] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn2,distance=...1] run tp @s 1589 50 1945 -90 60
#3
execute as @e[type=wither_skeleton,tag=Redead3] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn3] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead3] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn3,distance=...1] run tp @s 1584 50 1948 0 60
#4
execute as @e[type=wither_skeleton,tag=Redead4] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn4] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead4] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn4,distance=...1] run tp @s 1598 34 1956 0 60
#5
execute as @e[type=wither_skeleton,tag=Redead5] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn5] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead5] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn5,distance=...1] run tp @s 1742 32 1977 0 60
#6
execute as @e[type=wither_skeleton,tag=Redead6] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn6] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead6] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn6,distance=...1] run tp @s 1711 32 2009 -90 60
#7
execute as @e[type=wither_skeleton,tag=Redead7] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn7] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead7] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn7,distance=...1] run tp @s 1684 32 2013 -90 60
#8
execute as @e[type=wither_skeleton,tag=Redead8] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn8] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead8] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn8,distance=...1] run tp @s 1680 33 1976 0 60

#Keese
#1
execute as @e[type=bat,tag=Keese1] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 0 ~
execute as @e[type=bat,tag=Keese1,tag=Attack] run fill 1615 54 1959 1615 54 1959 minecraft:air
#2
execute as @e[type=bat,tag=Keese2] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 90 ~
execute as @e[type=bat,tag=Keese2,tag=Attack] run fill 1608 52 1951 1608 52 1951 minecraft:air
#3
execute as @e[type=bat,tag=Keese3] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 90 ~
execute as @e[type=bat,tag=Keese3,tag=Attack] run fill 1608 53 1949 1608 53 1949 minecraft:air
#4
execute as @e[type=bat,tag=Keese4] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 180 ~
execute as @e[type=bat,tag=Keese4,tag=Attack] run fill 1615 54 1941 1615 54 1941 minecraft:air

#Keese Room
execute unless block 1623 48 1950 minecraft:gold_block if entity @a[x=1624,y=51,z=1950,dx=0,dz=0] run function ocarina_of_time:moving_things/kakariko_village/enemies/keese
execute unless block 1623 48 1950 minecraft:gold_block if entity @a[x=1624,y=51,z=1950,dx=0,dz=0] run fill 1626 51 1950 1626 51 1950 minecraft:stone_pressure_plate
execute unless block 1623 48 1950 minecraft:gold_block if entity @a[x=1624,y=51,z=1950,dx=0,dz=0] run fill 1623 48 1950 1623 48 1950 minecraft:gold_block

#Royal Family Grave
execute if block 1623 48 1950 minecraft:gold_block unless block 1623 48 1949 minecraft:gold_block unless entity @e[type=bat,tag=Keese1] unless entity @e[type=bat,tag=Keese2] unless entity @e[type=bat,tag=Keese3] unless entity @e[type=bat,tag=Keese4] at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if block 1623 48 1950 minecraft:gold_block unless block 1623 48 1949 minecraft:gold_block unless entity @e[type=bat,tag=Keese1] unless entity @e[type=bat,tag=Keese2] unless entity @e[type=bat,tag=Keese3] unless entity @e[type=bat,tag=Keese4] run fill 1608 52 1951 1608 53 1949 minecraft:air replace minecraft:barrier
execute if block 1623 48 1950 minecraft:gold_block unless block 1623 48 1949 minecraft:gold_block unless entity @e[type=bat,tag=Keese1] unless entity @e[type=bat,tag=Keese2] unless entity @e[type=bat,tag=Keese3] unless entity @e[type=bat,tag=Keese4] run fill 1615 54 1959 1615 54 1959 minecraft:air replace minecraft:barrier
execute if block 1623 48 1950 minecraft:gold_block unless block 1623 48 1949 minecraft:gold_block unless entity @e[type=bat,tag=Keese1] unless entity @e[type=bat,tag=Keese2] unless entity @e[type=bat,tag=Keese3] unless entity @e[type=bat,tag=Keese4] run fill 1615 54 1941 1615 54 1941 minecraft:air replace minecraft:barrier
execute if block 1623 48 1950 minecraft:gold_block unless block 1623 48 1949 minecraft:gold_block unless entity @e[type=bat,tag=Keese1] unless entity @e[type=bat,tag=Keese2] unless entity @e[type=bat,tag=Keese3] unless entity @e[type=bat,tag=Keese4] run fill 1624 51 1950 1624 51 1950 minecraft:stone_pressure_plate replace minecraft:air
execute if block 1623 48 1950 minecraft:gold_block unless block 1623 48 1949 minecraft:gold_block unless entity @e[type=bat,tag=Keese1] unless entity @e[type=bat,tag=Keese2] unless entity @e[type=bat,tag=Keese3] unless entity @e[type=bat,tag=Keese4] run fill 1606 54 1950 1606 54 1950 minecraft:stone_pressure_plate replace minecraft:air
execute if block 1623 48 1950 minecraft:gold_block unless block 1623 48 1949 minecraft:gold_block unless entity @e[type=bat,tag=Keese1] unless entity @e[type=bat,tag=Keese2] unless entity @e[type=bat,tag=Keese3] unless entity @e[type=bat,tag=Keese4] run fill 1623 48 1949 1623 48 1949 minecraft:gold_block

#Redead Grotto
execute unless block 1500 35 1917 minecraft:gold_block if block 1499 35 1917 minecraft:gold_block unless entity @e[type=wither_skeleton,tag=Redead26] unless entity @e[type=wither_skeleton,tag=Redead27] run function ocarina_of_time:moving_things/kakariko_village/enemies/redead_room
#9
execute as @e[type=wither_skeleton,tag=Redead26] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn26] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead26] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn26,distance=...1] run tp @s 1497 38 1916 -45 60
#10
execute as @e[type=wither_skeleton,tag=Redead27] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn27] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead27] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn27,distance=...1] run tp @s 1503 38 1916 45 60

#Cursed Man
execute as @e[type=armor_stand,tag=CursedMan] unless entity @s[tag=Stun] unless entity @s[tag=Attack] run tp @s 1493 63 1933 -90 ~

#Cursed Child
#1
execute as @e[type=armor_stand,tag=CursedChild1] unless entity @s[tag=Stun] unless entity @s[tag=Attack] run tp @s 1497 63 1926 30 ~
#2
execute as @e[type=armor_stand,tag=CursedChild2] unless entity @s[tag=Stun] unless entity @s[tag=Attack] run tp @s 1497 63 1940 150 ~
#3
execute as @e[type=armor_stand,tag=CursedChild3] unless entity @s[tag=Stun] unless entity @s[tag=Attack] run tp @s 1485 63 1933 -90 ~
#4
execute as @e[type=armor_stand,tag=CursedChild4] unless entity @s[tag=Stun] unless entity @s[tag=Attack] run tp @s 1489 63 1940 -150 ~
#5
execute as @e[type=armor_stand,tag=CursedChild5] unless entity @s[tag=Stun] unless entity @s[tag=Attack] run tp @s 1489 63 1926 -30 ~
