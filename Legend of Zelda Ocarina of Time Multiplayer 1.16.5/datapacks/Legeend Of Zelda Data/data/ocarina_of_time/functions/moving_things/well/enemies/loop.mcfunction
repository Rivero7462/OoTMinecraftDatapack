#Skulltula
#1
execute as @e[type=zombie,tag=Skulltula9] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s -12 61 1375 0 ~
#2
execute as @e[type=zombie,tag=Skulltula10] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s -2.0 62 1339 180 ~
#3
execute as @e[type=zombie,tag=Skulltula11] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s -31 65 1314 0 ~
#4
execute as @e[type=zombie,tag=Skulltula12] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 5 61 1363 90 ~

#Wallmaster
#1
execute if entity @a[x=-20,y=59,z=1326,dx=16,dy=2,dz=17] unless entity @a[x=-5,y=59,z=1326,dx=1,dy=2,dz=2] unless entity @a[x=-20,y=59,z=1326,dx=2,dy=2,dz=2] run tag @e[type=zombie,tag=Wallmaster3] add Attack
execute as @e[type=zombie,tag=Wallmaster3] unless entity @s[scores={timer=181..201}] unless entity @a[x=-20,y=59,z=1326,dx=16,dy=2,dz=17] run tag @s remove Attack
execute as @e[type=zombie,tag=Wallmaster3] unless entity @s[tag=Attack] run tp @s -12 67 1334
execute as @e[type=zombie,tag=Wallmaster3,scores={timer=201..}] run tp @a -12 67 1337

#Redead
#1
execute as @e[type=wither_skeleton,tag=Redead17] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn17] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead17] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn17,distance=...1] run tp @s -30 36 1339 140 60
#2
execute as @e[type=wither_skeleton,tag=Redead18] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn18] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead18] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn18,distance=...1] run tp @s 5 36 1366 180 60

#Keese
execute as @e[type=bat,tag=Keese] at @s if entity @s[y=58,dy=0] run tp @s ~ ~1 ~
#1
execute as @e[type=bat,tag=Keese25] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 90 ~
execute unless entity @e[type=bat,tag=Keese25,x=-5,y=62,z=1326] run fill -5 63 1326 -5 63 1326 minecraft:air
#2
execute as @e[type=bat,tag=Keese26] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -90 ~
execute unless entity @e[type=bat,tag=Keese26,x=2,y=61,z=1325] run fill 2 62 1325 2 62 1325 minecraft:air
#3
execute as @e[type=bat,tag=Keese27] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 180 ~
execute unless entity @e[type=bat,tag=Keese27,x=0,y=62,z=1320] run fill 0 63 1320 0 63 1320 minecraft:air
#4
execute as @e[type=bat,tag=Keese28] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 180 ~
execute unless entity @e[type=bat,tag=Keese28,x=-4,y=60,z=1320] run fill -4 61 1320 -4 61 1320 minecraft:air

#Gibdo
#1
execute as @e[type=wither_skeleton,tag=Gibdo1] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=GibdoReturn1] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Gibdo1] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=GibdoReturn1,distance=...1] run tp @s -74 59 1331 0 60
#2
execute as @e[type=wither_skeleton,tag=Gibdo2] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=GibdoReturn2] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Gibdo2] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=GibdoReturn2,distance=...1] run tp @s -76.0 59 1340 0 60

#Green Bubble
#1
execute as @e[type=zombie,tag=GreenBubble3] at @s run function ocarina_of_time:moving_things/well/enemies/green_bubble

#Dead Hand
execute unless block 33 56 1362 minecraft:gold_block if entity @a[x=15,y=59,z=1363,dx=0,dz=0] run function ocarina_of_time:moving_things/well/enemies/dead_hand/summon
execute unless block 33 56 1364 minecraft:gold_block as @e[type=armor_stand,tag=DeadHand] at @s run function ocarina_of_time:moving_things/well/enemies/dead_hand/loop
