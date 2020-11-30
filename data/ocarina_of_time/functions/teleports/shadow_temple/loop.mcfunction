#Shadow Temple
execute if entity @s[x=1664,y=92,z=960,dx=2,dz=0] run function ocarina_of_time:teleports/shadow_temple/kakariko_village/to
execute if entity @s[x=1694,y=73,z=940,dx=0,dz=0] run function ocarina_of_time:teleports/shadow_temple/kakariko_village/from

#Exit
execute unless entity @a[tag=ShadowMedallion] if entity @s[tag=!Boss,x=1649,y=21,z=957,dx=2,dy=10,dz=2] run tp @s 1650 ~ 958
execute unless entity @a[tag=ShadowMedallion] if entity @s[tag=!Boss,x=1649,y=21,z=957,dx=2,dy=10,dz=2] run effect give @s minecraft:levitation 1 3 true
execute unless entity @a[tag=ShadowMedallion] if entity @s[tag=!Boss,x=1649,y=31,z=957,dx=2,dz=2] run function ocarina_of_time:teleports/shadow_temple/boss_room

#Cutscene
execute if entity @a[tag=ShadowMedallion] if entity @s[tag=!Boss,x=1649,y=21,z=957,dx=2,dy=10,dz=2] run tp @s 1650 ~ 958
execute if entity @a[tag=ShadowMedallion] if entity @s[tag=!Boss,x=1649,y=21,z=957,dx=2,dy=10,dz=2] run effect give @s minecraft:levitation 1 3 true
execute if entity @a[tag=ShadowMedallion] if entity @s[tag=!Boss,x=1649,y=31,z=957,dx=2,dz=2] run function ocarina_of_time:teleports/shadow_temple/shadow_medallion
