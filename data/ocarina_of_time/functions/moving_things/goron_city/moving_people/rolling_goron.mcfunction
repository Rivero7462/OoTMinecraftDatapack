#Always The Same
execute unless entity @s[tag=Wait] run scoreboard players add @s lifetime 1

#Stop
execute if entity @s[tag=Wait] run tp @s ~ 69 ~ facing entity @p
execute if entity @s[tag=Wait] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

#Go
execute unless entity @s[tag=Wait] run tp @s ~ 67.9 ~
execute unless entity @s[tag=Wait] run data merge entity @s {Pose:{Body:[-45f,0f,0f],Head:[90f,0f,0f],LeftLeg:[160f,180f,0f],RightLeg:[160f,180f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,-90f]}}

#Hurt
execute if entity @a[distance=..2] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true

#LifeTime
execute if entity @s[scores={lifetime=721..}] unless entity @a[tag=Adult] run summon minecraft:armor_stand 2194 67.9 1841 {Small:0b,NoGravity:1b,ShowArms:1b,Invisible:1b,Rotation:[70f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:9}},{id:stone,Count:1b,tag:{CustomModelData:9}}],DisabledSlots:4144959,Pose:{Body:[-45f,0f,0f],Head:[90f,0f,0f],LeftLeg:[160f,180f,0f],RightLeg:[160f,180f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,-90f]},CustomName:"\"Goron\"",CustomNameVisible:0,Tags:["Goron","Goron11","Npc"]}
execute if entity @s[scores={lifetime=721..}] run kill @e[type=armor_stand,tag=Goron11]
execute if entity @a[tag=Adult] run kill @e[type=armor_stand,tag=Goron11]

#Moving
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=1..85}] run tp @s ~-.15 67.9 ~.06 70 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=86..144}] run tp @s ~-.13 67.9 ~-.07 120 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=145..175}] run tp @s ~-.2 67.9 ~ 90 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=176..208}] run tp @s ~-.1 67.9 ~-.1 135 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=209..261}] run tp @s ~.06 67.9 ~-.14 -157 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=262..290}] run tp @s ~-.08 67.9 ~-.12 150 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=291..320}] run tp @s ~.08 67.9 ~-.12 -150 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=321..366}] run tp @s ~ 67.9 ~-.2 180 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=367..407}] run tp @s ~.18 67.9 ~.02 -82 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=408..452}] run tp @s ~.07 67.9 ~-.13 -155 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=453..570}] run tp @s ~.11 67.9 ~.09 -50 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=571..612}] run tp @s ~.07 67.9 ~.13 -24 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=613..671}] run tp @s ~-.05 67.9 ~.15 16 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=672..720}] run tp @s ~.07 67.9 ~.13 -29 ~
execute unless entity @s[tag=Wait] if entity @s[scores={lifetime=721}] run tp @s ~.07 67.9 ~.13 70 ~
