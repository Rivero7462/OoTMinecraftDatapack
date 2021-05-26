#Redead
#1
execute as @e[type=wither_skeleton,tag=Redead19] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn19] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead19] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn19,distance=...1] run tp @s 1650 91 912 0 60
#2
execute as @e[type=wither_skeleton,tag=Redead20] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn20] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead20] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn20,distance=...1] run tp @s 1719 58 967 -45 60
#3
execute as @e[type=wither_skeleton,tag=Redead21] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn21] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead21] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn21,distance=...1] run tp @s 1733 58 967 45 60
#4
execute as @e[type=wither_skeleton,tag=Redead22] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn22] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead22] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn22,distance=...1] run tp @s 1788 58 939 180 60
#5
execute as @e[type=wither_skeleton,tag=Redead23] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn23] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead23] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn23,distance=...1] run tp @s 1788 58 931 0 60

#Redead Room 1
execute unless block 1649 89 910 minecraft:gold_block if entity @a[x=1650,y=91,z=917,dx=0,dz=0] run function ocarina_of_time:moving_things/shadow_temple/enemies/redead_room_1/summon
execute unless block 1650 89 910 minecraft:gold_block if block 1649 89 910 minecraft:gold_block unless entity @e[type=wither_skeleton,tag=Redead19] unless entity @e[type=bat,tag=Keese38] unless entity @e[type=bat,tag=Keese39] run function ocarina_of_time:moving_things/shadow_temple/enemies/redead_room_1/finish
#Redead Room 2
execute unless block 1791 55 934 minecraft:gold_block if entity @a[x=1783,y=58,z=935,dx=0,dz=0] run function ocarina_of_time:moving_things/shadow_temple/enemies/redead_room_2/summon
execute unless block 1791 55 935 minecraft:gold_block if block 1791 55 934 minecraft:gold_block unless entity @e[type=wither_skeleton,tag=Redead22] unless entity @e[type=wither_skeleton,tag=Redead23] run function ocarina_of_time:moving_things/shadow_temple/enemies/redead_room_2/finish

#Gibdo
#1
execute as @e[type=wither_skeleton,tag=Gibdo3] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=GibdoReturn3] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Gibdo3] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=GibdoReturn3,distance=...1] run tp @s 1753 77 956 180 60
#2
execute as @e[type=wither_skeleton,tag=Gibdo4] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=GibdoReturn4] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Gibdo4] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=GibdoReturn4,distance=...1] run tp @s 1747 77 956 180 60

#3
execute as @e[type=wither_skeleton,tag=Gibdo5] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=GibdoReturn5] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Gibdo5] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=GibdoReturn5,distance=...1] run tp @s 1772 58 917 -30 60
#4
execute as @e[type=wither_skeleton,tag=Gibdo6] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=GibdoReturn6] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Gibdo6] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=GibdoReturn6,distance=...1] run tp @s 1778 58 917 30 60

#Gibdo Room 1
execute unless block 1751 75 958 minecraft:gold_block if entity @a[x=1750,y=77,z=951,dx=0,dz=0] run function ocarina_of_time:moving_things/shadow_temple/enemies/gibdo_room_1/summon
execute unless block 1750 75 958 minecraft:gold_block if block 1751 75 958 minecraft:gold_block unless entity @e[type=wither_skeleton,tag=Gibdo3] unless entity @e[type=wither_skeleton,tag=Gibdo4] run function ocarina_of_time:moving_things/shadow_temple/enemies/gibdo_room_1/finish
#Gibdo Room 2
execute unless block 1774 54 915 minecraft:gold_block if entity @a[x=1775,y=58,z=923,dx=0,dz=0] run function ocarina_of_time:moving_things/shadow_temple/enemies/gibdo_room_2/summon
execute unless block 1775 54 915 minecraft:gold_block if block 1774 54 915 minecraft:gold_block unless entity @e[type=wither_skeleton,tag=Gibdo5] unless entity @e[type=wither_skeleton,tag=Gibdo6] run function ocarina_of_time:moving_things/shadow_temple/enemies/gibdo_room_2/finish

#Keese
#1
execute as @e[type=bat,tag=Keese38] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 180 ~
#2
execute as @e[type=bat,tag=Keese39] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 180 ~
#3
execute as @e[type=bat,tag=Keese45] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 135 ~
execute unless entity @e[type=bat,tag=Keese45,x=1691,y=68,z=960] run fill 1691 69 960 1691 69 960 minecraft:air
#4
execute as @e[type=bat,tag=Keese46] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 45 ~
execute unless entity @e[type=bat,tag=Keese46,x=1691,y=68,z=968] run fill 1691 69 968 1691 69 968 minecraft:air

#Keese Room 1
execute unless block 1706 55 965 minecraft:gold_block if entity @a[x=1714,y=58,z=964,dx=0,dz=0] run function ocarina_of_time:moving_things/shadow_temple/enemies/keese_room_1/summon
execute unless block 1706 55 964 minecraft:gold_block if block 1706 55 965 minecraft:gold_block unless entity @e[type=bat,tag=Keese43] unless entity @e[type=bat,tag=Keese44] unless entity @e[type=bat,tag=Keese45] unless entity @e[type=bat,tag=Keese46] run function ocarina_of_time:moving_things/shadow_temple/enemies/keese_room_1/finish

#Dead Hand
execute unless block 1591 88 926 minecraft:gold_block if entity @a[x=1609,y=91,z=925,dx=0,dz=0] run function ocarina_of_time:moving_things/shadow_temple/enemies/dead_hand/summon
execute unless block 1591 88 925 minecraft:gold_block as @e[type=armor_stand,tag=DeadHand] at @s run function ocarina_of_time:moving_things/shadow_temple/enemies/dead_hand/loop

#Skulltula
#1
execute as @e[type=zombie,tag=Skulltula13] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 1771 80 940 90 ~
#2
execute as @e[type=zombie,tag=Skulltula14] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 1774 77 944 -90 ~
#3
execute as @e[type=zombie,tag=Skulltula15] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 1767 75 944 -90 ~
#4
execute as @e[type=zombie,tag=Skulltula16] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 1764 73 958 180 ~
#5
execute as @e[type=zombie,tag=Skulltula17] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 1740 66 939 0 ~

#Red Bubble
execute as @e[type=zombie,tag=RedBubble] at @s run function ocarina_of_time:moving_things/shadow_temple/enemies/red_bubble

#Stalfos
execute unless block 1752 61 1013 minecraft:gold_block if entity @a[x=1749,y=63,z=1012,dx=6,dz=4] run function ocarina_of_time:moving_things/shadow_temple/enemies/stalfos/stalfos_1
execute unless entity @e[type=zombie,tag=Stalfos1] run kill @e[type=armor_stand,tag=StalfosShield1,limit=1,sort=nearest]
execute unless entity @e[type=zombie,tag=Stalfos2] run kill @e[type=armor_stand,tag=StalfosShield2,limit=1,sort=nearest]
execute as @e[type=zombie,tag=Stalfos] at @s if entity @s[y=61,dy=0] run kill @s

#Keese
#1
execute as @e[type=bat,tag=Keese40] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 180 ~
execute unless entity @e[type=bat,tag=Keese40,x=1782,y=66,z=970] run fill 1782 67 970 1782 67 970 minecraft:air
#2
execute as @e[type=bat,tag=Keese41] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 0 ~
execute unless entity @e[type=bat,tag=Keese41,x=1779,y=66,z=998] run fill 1779 67 998 1779 67 998 minecraft:air
#3
execute as @e[type=bat,tag=Keese42] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -90 ~
execute unless entity @e[type=bat,tag=Keese42,x=1796,y=66,z=993] run fill 1796 67 993 1796 67 993 minecraft:air

#Keese and Like Like Room
execute unless block 1797 60 985 minecraft:gold_block if block 1797 60 984 minecraft:gold_block unless entity @e[type=zombie,tag=LikeLike5] unless entity @e[type=bat,tag=Keese40] unless entity @e[type=bat,tag=Keese41] unless entity @e[type=bat,tag=Keese42] run fill 1797 63 983 1797 65 985 minecraft:air
execute unless block 1797 60 985 minecraft:gold_block if block 1797 60 984 minecraft:gold_block unless entity @e[type=zombie,tag=LikeLike5] unless entity @e[type=bat,tag=Keese40] unless entity @e[type=bat,tag=Keese41] unless entity @e[type=bat,tag=Keese42] run fill 1797 60 985 1797 60 985 minecraft:gold_block

#Spike Traps
execute as @e[type=armor_stand,tag=BladeTrap] at @s run function ocarina_of_time:moving_things/shadow_temple/enemies/spike_trap

#Wallmaster
#1
execute if entity @a[x=1745,y=63,z=968,dx=15,dy=4,dz=14] run tag @e[type=zombie,tag=Wallmaster4] add Attack
execute as @e[type=zombie,tag=Wallmaster4] unless entity @s[scores={timer=181..201}] unless entity @a[x=1745,y=63,z=968,dx=15,dy=4,dz=14] run tag @s remove Attack
execute as @e[type=zombie,tag=Wallmaster4] unless entity @s[tag=Attack] run tp @s 1752 83 979
execute as @e[type=zombie,tag=Wallmaster4,scores={timer=201..}] run tp @a 1750 28 996

#Floormaster Room
execute unless block 1552 54 939 minecraft:gold_block if entity @a[x=1551,y=58,z=926,dx=0,dz=0] run function ocarina_of_time:moving_things/shadow_temple/enemies/floormaster_room/summon
execute unless block 1551 54 939 minecraft:gold_block if block 1552 54 939 minecraft:gold_block unless entity @e[type=zombie,tag=Floormaster4] unless entity @e[x=1543,y=58,z=926,dx=16,dy=3,dz=16,type=zombie,tag=Tinymaster] run function ocarina_of_time:moving_things/shadow_temple/enemies/floormaster_room/finish

#Spike Room
execute unless block 1550 55 878 minecraft:gold_block if entity @a[x=1551,y=58,z=886,dx=0,dz=0] run function ocarina_of_time:moving_things/shadow_temple/enemies/spike_walls/summon
execute if block 1550 55 878 minecraft:gold_block as @e[type=armor_stand,tag=SpikeWall] at @s run function ocarina_of_time:moving_things/shadow_temple/enemies/spike_walls/move
execute if block 1550 55 878 minecraft:gold_block unless block 1551 55 878 minecraft:gold_block unless entity @e[type=armor_stand,tag=SpikeWall] run function ocarina_of_time:moving_things/shadow_temple/enemies/spike_walls/finish

#Skull Pot
execute as @e[type=armor_stand,tag=SkullPot] at @s run function ocarina_of_time:moving_things/shadow_temple/enemies/skull_pot
