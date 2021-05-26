#Deku Babas
#1
execute unless entity @a[tag=NotStarted] unless entity @a[tag=MeetNavi] unless entity @a[tag=MeetDekuTree,x=-516,y=65,z=-644,dx=5,dy=2,dz=5] unless entity @a[tag=DeadDekuTree] unless entity @e[type=wither_skeleton,tag=DekuBabaBody1] unless entity @a[tag=Adult] unless entity @e[type=wither_skeleton,tag=DekuBabaBody1] if entity @e[type=area_effect_cloud,tag=DekuBabaHealth1,scores={lifetime=300..}] run function ocarina_of_time:moving_things/kokiri_forest/enemies/deku_baba1
execute unless entity @a[tag=NotStarted] unless entity @a[tag=MeetNavi] unless entity @a[tag=MeetDekuTree,x=-516,y=65,z=-644,dx=5,dy=2,dz=5] unless entity @a[tag=DeadDekuTree] unless entity @e[type=wither_skeleton,tag=DekuBabaBody1] run kill @e[type=wither_skeleton,tag=DekuBaba1]
execute unless entity @a[tag=NotStarted] unless entity @a[tag=MeetNavi] unless entity @a[tag=MeetDekuTree,x=-516,y=65,z=-644,dx=5,dy=2,dz=5] unless entity @a[tag=DeadDekuTree] unless entity @e[type=wither_skeleton,tag=DekuBabaBody1] run kill @e[type=armor_stand,tag=DekuBaba1]
execute unless entity @a[tag=NotStarted] unless entity @a[tag=MeetNavi] unless entity @a[tag=MeetDekuTree,x=-516,y=65,z=-644,dx=5,dy=2,dz=5] unless entity @a[tag=DeadDekuTree] unless entity @e[type=wither_skeleton,tag=DekuBabaBody1] run scoreboard players add @e[type=area_effect_cloud,tag=DekuBabaHealth1] lifetime 1
#2
execute unless entity @a[tag=NotStarted] unless entity @a[tag=MeetNavi] unless entity @a[tag=MeetDekuTree,x=-516,y=65,z=-644,dx=5,dy=2,dz=5] unless entity @a[tag=DeadDekuTree] unless entity @e[type=wither_skeleton,tag=DekuBabaBody2] unless entity @a[tag=Adult] unless entity @e[type=wither_skeleton,tag=DekuBabaBody2] if entity @e[type=area_effect_cloud,tag=DekuBabaHealth2,scores={lifetime=300..}] run function ocarina_of_time:moving_things/kokiri_forest/enemies/deku_baba2
execute unless entity @a[tag=NotStarted] unless entity @a[tag=MeetNavi] unless entity @a[tag=MeetDekuTree,x=-516,y=65,z=-644,dx=5,dy=2,dz=5] unless entity @a[tag=DeadDekuTree] unless entity @e[type=wither_skeleton,tag=DekuBabaBody2] run kill @e[type=wither_skeleton,tag=DekuBaba2]
execute unless entity @a[tag=NotStarted] unless entity @a[tag=MeetNavi] unless entity @a[tag=MeetDekuTree,x=-516,y=65,z=-644,dx=5,dy=2,dz=5] unless entity @a[tag=DeadDekuTree] unless entity @e[type=wither_skeleton,tag=DekuBabaBody2] run kill @e[type=armor_stand,tag=DekuBaba2]
execute unless entity @a[tag=NotStarted] unless entity @a[tag=MeetNavi] unless entity @a[tag=MeetDekuTree,x=-516,y=65,z=-644,dx=5,dy=2,dz=5] unless entity @a[tag=DeadDekuTree] unless entity @e[type=wither_skeleton,tag=DekuBabaBody2] run scoreboard players add @e[type=area_effect_cloud,tag=DekuBabaHealth2] lifetime 1
#3
execute unless entity @a[tag=NotStarted] unless entity @a[tag=MeetNavi] unless entity @a[tag=MeetDekuTree,x=-516,y=65,z=-644,dx=5,dy=2,dz=5] unless entity @a[tag=DeadDekuTree] unless entity @e[type=wither_skeleton,tag=DekuBabaBody3] unless entity @a[tag=Adult] unless entity @e[type=wither_skeleton,tag=DekuBabaBody3] if entity @e[type=area_effect_cloud,tag=DekuBabaHealth3,scores={lifetime=300..}] run function ocarina_of_time:moving_things/kokiri_forest/enemies/deku_baba3
execute unless entity @a[tag=NotStarted] unless entity @a[tag=MeetNavi] unless entity @a[tag=MeetDekuTree,x=-516,y=65,z=-644,dx=5,dy=2,dz=5] unless entity @a[tag=DeadDekuTree] unless entity @e[type=wither_skeleton,tag=DekuBabaBody3] run kill @e[type=wither_skeleton,tag=DekuBaba3]
execute unless entity @a[tag=NotStarted] unless entity @a[tag=MeetNavi] unless entity @a[tag=MeetDekuTree,x=-516,y=65,z=-644,dx=5,dy=2,dz=5] unless entity @a[tag=DeadDekuTree] unless entity @e[type=wither_skeleton,tag=DekuBabaBody3] run kill @e[type=armor_stand,tag=DekuBaba3]
execute unless entity @a[tag=NotStarted] unless entity @a[tag=MeetNavi] unless entity @a[tag=MeetDekuTree,x=-516,y=65,z=-644,dx=5,dy=2,dz=5] unless entity @a[tag=DeadDekuTree] unless entity @e[type=wither_skeleton,tag=DekuBabaBody3] run scoreboard players add @e[type=area_effect_cloud,tag=DekuBabaHealth3] lifetime 1

#Octorok
#1
execute as @e[type=zombie,tag=Octorok1] at @s if entity @s[scores={timer=30}] run summon minecraft:armor_stand ^ ^-.3 ^1 {Tags:["OckRock1","OckRock"],DisabledSlots:4144959,NoGravity:1b,Small:1b,ShowArms:0b,Invisible:1b,CustomName:"\"OckRock\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:player_head,Count:1,tag:{SkullOwner:{Name:"\"OckRock\"",Id:[I;-1462228361,-1966521004,-1353016591,943550771],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWMwZTI3ZTU2YjU3MjU5N2E0MjljNzRiNmQyZDQ1MWQyYjk2MDhkMTNmZDYwYTQyMDMzMGRkNTdjNTRhYmM2ZSJ9fX0="}]}}}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @e[type=zombie,tag=Octorok1] at @s if entity @s[scores={timer=31}] run tp @e[type=armor_stand,tag=OckRock1] ~ ~-.3 ~ facing entity @p
execute as @e[type=zombie,tag=Octorok1] unless entity @s[scores={timer=26..35}] run tp @s -569 64.8 -637
execute as @e[type=zombie,tag=Octorok1] at @s positioned ~-8 ~ ~-8 unless entity @a[dx=16,dy=100,dz=16] run tp @s -569 57 -637
execute as @e[type=zombie,tag=Octorok1] at @s positioned ~-2 ~ ~-2 if entity @a[dx=4,dy=100,dz=4] unless entity @s[scores={timer=0}] run tp @s -569 57 -637
#2
execute as @e[type=zombie,tag=Octorok2] at @s if entity @s[scores={timer=30}] run summon minecraft:armor_stand ^ ^-.3 ^1 {Tags:["OckRock2","OckRock"],DisabledSlots:4144959,NoGravity:1b,Small:1b,ShowArms:0b,Invisible:1b,CustomName:"\"OckRock\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:player_head,Count:1,tag:{SkullOwner:{Name:"\"OckRock\"",Id:[I;-1462228361,-1966521004,-1353016591,943550771],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWMwZTI3ZTU2YjU3MjU5N2E0MjljNzRiNmQyZDQ1MWQyYjk2MDhkMTNmZDYwYTQyMDMzMGRkNTdjNTRhYmM2ZSJ9fX0="}]}}}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @e[type=zombie,tag=Octorok2] at @s if entity @s[scores={timer=31}] run tp @e[type=armor_stand,tag=OckRock2] ~ ~-.3 ~ facing entity @p
execute as @e[type=zombie,tag=Octorok2] unless entity @s[scores={timer=26..35}] run tp @s -552 64.8 -629
execute as @e[type=zombie,tag=Octorok2] at @s positioned ~-8 ~ ~-8 unless entity @a[dx=16,dy=100,dz=16] run tp @s -552 57 -629
execute as @e[type=zombie,tag=Octorok2] at @s positioned ~-2 ~ ~-2 if entity @a[dx=4,dy=100,dz=4] unless entity @s[scores={timer=0}] run tp @s -552 57 -629

#Skulltula
#1
execute as @e[type=zombie,tag=Skulltula8] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s -534 67 -628 90 ~

#Moblins
#1
execute as @e[type=wither_skeleton,tag=Moblin1] at @s run function ocarina_of_time:moving_things/kokiri_forest/enemies/moblin_1
#2
execute as @e[type=wither_skeleton,tag=Moblin2] at @s run function ocarina_of_time:moving_things/kokiri_forest/enemies/moblin_2
#3
execute as @e[type=wither_skeleton,tag=Moblin3] at @s run function ocarina_of_time:moving_things/kokiri_forest/enemies/moblin_3
#4
execute as @e[type=wither_skeleton,tag=Moblin4] at @s run function ocarina_of_time:moving_things/kokiri_forest/enemies/moblin_4
#5
execute as @e[type=wither_skeleton,tag=Moblin5] at @s run function ocarina_of_time:moving_things/kokiri_forest/enemies/moblin_5

#Wolfos Grotto
execute unless block -597 39 -728 minecraft:gold_block if block -598 39 -728 minecraft:gold_block unless entity @e[type=zombie,tag=Wolfos10] unless entity @e[type=zombie,tag=Wolfos11] run function ocarina_of_time:moving_things/kokiri_forest/enemies/wolfos_grotto
