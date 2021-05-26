#Always The Same
scoreboard players add @s lifetime 1
scoreboard players set @s text 1


#LifeTime
execute if entity @s[scores={lifetime=335..}] unless entity @a[tag=Adult] run summon minecraft:armor_stand 1554 75 1937 {Tags:["Carpenter","Shiro1","Npc"],ShowArms:1b,Invisible:1b,Rotation:[0f],CustomName:"\"Shiro\"",CustomNameVisible:0,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:2180034}}},{id:"leather_leggings",Count:1,tag:{display:{color:15079802}}},{id:"leather_chestplate",Count:1,tag:{display:{color:2180034}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Shiro\"}",Id:[I;1265009262,-1873787448,-1137642244,-1371030166],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmI2NWJhOTdhOGEwMjk5NWU5YjRiYmZiMDIwMmVjNTdhYTlkN2Y1MzZhYTI1N2ZhZWRlODE0MjgyMTFlNjJjNSJ9fX0="}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:7}},{id:stone,Count:1b,tag:{CustomModelData:7}}],DisabledSlots:4144959}
execute if entity @s[scores={lifetime=335..}] run kill @e[type=armor_stand,tag=Shiro1]
execute if entity @a[tag=Adult] run kill @e[type=armor_stand,tag=Shiro1]
#Moving
execute if entity @s[scores={lifetime=1..95}] run data merge entity @s {Rotation:[0f],Motion:[0.0,-0.3,0.2]}
execute if entity @s[scores={lifetime=96..162}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}

execute if entity @s[scores={lifetime=131..132}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.5,0.0]}

execute if entity @s[scores={lifetime=163..167}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=168..229}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,-0.2,0.0]}
execute if entity @s[scores={lifetime=230..272}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=230..327}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}

execute if entity @s[scores={lifetime=260..302}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.12,-0.2]}

execute if entity @s[scores={lifetime=328..330}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=331..}] run data merge entity @s {Rotation:[0f]}