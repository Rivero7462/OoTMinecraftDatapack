#Stalfos
execute unless entity @e[type=zombie,tag=Stalfos1] run kill @e[type=armor_stand,tag=StalfosShield1,limit=1,sort=nearest]
execute unless entity @e[type=zombie,tag=Stalfos2] run kill @e[type=armor_stand,tag=StalfosShield2,limit=1,sort=nearest]

#Redead
#1
execute as @e[type=wither_skeleton,tag=Redead28] at @s unless entity @s[tag=Stun] unless entity @s[tag=Attack] facing entity @e[type=area_effect_cloud,tag=RedeadReturn28] feet rotated ~ 0 run tp @s ^ ^ ^.02 ~ ~
execute as @e[type=wither_skeleton,tag=Redead28] at @s unless entity @s[tag=Attack] if entity @e[type=area_effect_cloud,tag=RedeadReturn28,distance=...1] run tp @s -629 18.5 937 0 60
