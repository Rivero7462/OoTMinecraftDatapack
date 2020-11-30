scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..100}] run tp @s ~ ~-.02 ~

execute if entity @s[scores={timer=101}] if entity @s[x=906.7,y=28,z=-1200,dx=0,dz=0,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["BackPainting","Boss"],Rotation:[110f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
execute if entity @s[scores={timer=101}] if entity @s[x=906.7,y=28,z=-1210,dx=0,dz=0,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["BackPainting","Boss"],Rotation:[70f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
execute if entity @s[scores={timer=101}] if entity @s[x=898,y=28,z=-1214.6,dx=0,dz=0,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["BackPainting","Boss"],Rotation:[0f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
execute if entity @s[scores={timer=101}] if entity @s[x=890.3,y=28,z=-1210,dx=0,dz=0,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["BackPainting","Boss"],Rotation:[-70f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
execute if entity @s[scores={timer=101}] if entity @s[x=890.3,y=28,z=-1200,dx=0,dz=0,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["BackPainting","Boss"],Rotation:[-110f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
execute if entity @s[scores={timer=101}] if entity @s[x=898,y=28,z=-1194.4,dx=0,dz=0,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["BackPainting","Boss"],Rotation:[180f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}

execute if entity @s[scores={timer=101}] run kill @s
