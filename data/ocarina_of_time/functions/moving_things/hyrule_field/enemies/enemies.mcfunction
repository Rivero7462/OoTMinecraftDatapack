#Peahat
execute if entity @a[tag=Adult] run kill @e[type=armor_stand,tag=Peahat]
execute if entity @a[tag=Adult] run kill @e[type=zombie,tag=Peahat]
execute if entity @a[tag=Adult] run kill @e[type=armor_stand,tag=PeahatReturn]
execute if entity @a[tag=Adult] run kill @e[type=zombie,tag=SpecialPeahat]
execute if entity @a[tag=Adult] run kill @e[type=armor_stand,tag=SpecialPeahat]

#1
execute as @e[type=armor_stand,tag=Peahat1] at @s if entity @e[type=area_effect_cloud,tag=PeahatReturn1] run tp @e[type=zombie,tag=Peahat1] ~ ~ ~
execute as @e[type=armor_stand,tag=Peahat1] at @s if entity @s[scores={lifetime=1}] run summon minecraft:area_effect_cloud ~ 62 ~ {Tags:["PeahatReturn1","PeahatReturn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=zombie,tag=Peahat1] run kill @e[type=armor_stand,tag=Peahat1]
execute unless entity @e[type=zombie,tag=Peahat1] run kill @e[type=area_effect_cloud,tag=PeahatReturn1]
#2
execute as @e[type=armor_stand,tag=Peahat2] at @s if entity @e[type=area_effect_cloud,tag=PeahatReturn2] run tp @e[type=zombie,tag=Peahat2] ~ ~ ~
execute as @e[type=armor_stand,tag=Peahat2] at @s if entity @s[scores={lifetime=1}] run summon minecraft:area_effect_cloud ~ 61 ~ {Tags:["PeahatReturn2","PeahatReturn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=zombie,tag=Peahat2] run kill @e[type=armor_stand,tag=Peahat2]
execute unless entity @e[type=zombie,tag=Peahat2] run kill @e[type=area_effect_cloud,tag=PeahatReturn2]
#3
execute as @e[type=armor_stand,tag=Peahat3] at @s if entity @e[type=area_effect_cloud,tag=PeahatReturn3] run tp @e[type=zombie,tag=Peahat3] ~ ~ ~
execute as @e[type=armor_stand,tag=Peahat3] at @s if entity @s[scores={lifetime=1}] run summon minecraft:area_effect_cloud ~ 57 ~ {Tags:["PeahatReturn3","PeahatReturn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=zombie,tag=Peahat3] run kill @e[type=armor_stand,tag=Peahat3]
execute unless entity @e[type=zombie,tag=Peahat3] run kill @e[type=area_effect_cloud,tag=PeahatReturn3]
#4
execute as @e[type=armor_stand,tag=Peahat4] at @s if entity @e[type=area_effect_cloud,tag=PeahatReturn4] run tp @e[type=zombie,tag=Peahat4] ~ ~ ~
execute as @e[type=armor_stand,tag=Peahat4] at @s if entity @s[scores={lifetime=1}] run summon minecraft:area_effect_cloud ~ 57 ~ {Tags:["PeahatReturn4","PeahatReturn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=zombie,tag=Peahat4] run kill @e[type=armor_stand,tag=Peahat4]
execute unless entity @e[type=zombie,tag=Peahat4] run kill @e[type=area_effect_cloud,tag=PeahatReturn4]
#5
execute as @e[type=armor_stand,tag=Peahat5] at @s if entity @e[type=area_effect_cloud,tag=PeahatReturn5] run tp @e[type=zombie,tag=Peahat5] ~ ~ ~
execute as @e[type=armor_stand,tag=Peahat5] at @s if entity @s[scores={lifetime=1}] run summon minecraft:area_effect_cloud ~ 58 ~ {Tags:["PeahatReturn5","PeahatReturn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=zombie,tag=Peahat5] run kill @e[type=armor_stand,tag=Peahat5]
execute unless entity @e[type=zombie,tag=Peahat5] run kill @e[type=area_effect_cloud,tag=PeahatReturn5]
#6
execute as @e[type=armor_stand,tag=Peahat6] at @s if entity @e[type=area_effect_cloud,tag=PeahatReturn6] run tp @e[type=zombie,tag=Peahat6] ~ ~ ~
execute as @e[type=armor_stand,tag=Peahat6] at @s if entity @s[scores={lifetime=1}] run summon minecraft:area_effect_cloud ~ 54 ~ {Tags:["PeahatReturn6","PeahatReturn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=zombie,tag=Peahat6] run kill @e[type=armor_stand,tag=Peahat6]
execute unless entity @e[type=zombie,tag=Peahat6] run kill @e[type=area_effect_cloud,tag=PeahatReturn6]

#Big Poes
execute if entity @a[tag=Adult] as @e[type=area_effect_cloud,tag=SpawnBigPoe] run function ocarina_of_time:moving_things/hyrule_field/enemies/big_poe

#Stalchild
execute unless entity @a[tag=Adult] unless entity @a[tag=StopStalchildSpawn] unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Keaton Mask\""}}}]}] as @e[type=area_effect_cloud,tag=StalchildSpawn] at @s if entity @a[scores={time=13001..23000}] run function ocarina_of_time:moving_things/hyrule_field/enemies/stalchild_spawn
execute if entity @a[tag=StopStalchildSpawn] run kill @e[type=zombie,tag=Stalchild]
execute if entity @a[tag=StopStalchildSpawn] run kill @e[type=wither_skeleton,tag=Stalchild]

#Skulltula
#1
execute as @e[type=zombie,tag=Skulltula18] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 757 38 2051 180 ~
#2
execute as @e[type=zombie,tag=Skulltula19] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 1032 38 1900 0 ~
