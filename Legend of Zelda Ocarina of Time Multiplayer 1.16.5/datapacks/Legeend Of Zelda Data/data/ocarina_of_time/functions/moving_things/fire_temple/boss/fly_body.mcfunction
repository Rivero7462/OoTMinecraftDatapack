execute unless entity @s[team=Rock] run team join Rock @s

#Appear
scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..9}] rotated as @e[type=zombie,tag=VolvagiaHead] run tp @s ~ ~ ~ ~180 90

#Fly
#Summon
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=20}] run summon minecraft:zombie ~ 42 ~ {Tags:["Volvagia","VolvagiaTail","VolvagiaBody"],Rotation:[160f,90f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:dead_brain_coral_fan,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#Up
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=10..55}] run tp @s ~ ~.08 ~ ~ 90
#Rotate
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=56..73}] run tp @s ^ ^-.08 ^-.08 ~ ~-5
#Connect
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] unless entity @s[scores={lifetime=1..76}] unless entity @s[tag=FlyDown] at @e[type=zombie,tag=VolvagiaHead] positioned ^ ^ ^ unless entity @s[distance=...1] facing entity @s feet positioned as @s run tp @s ^ ^ ^-.16 ~ 0
#Fly Down
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=201..}] positioned ~ ~1 ~ if entity @e[type=area_effect_cloud,tag=DragonFloor,tag=Return,distance=..1] run tag @s add FlyDown
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[tag=FlyDown] unless entity @s[scores={lifetime=500..}] run scoreboard players set @s lifetime 500
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=500..508}] run tp @s ^ ^ ^-.08
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=509..518}] run tp @s ^ ^-.08 ^-.04 ~ ~-5
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=519..528}] run tp @s ^ ^ ^-.08 ~ ~-5
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=529..600}] run tp @s ~ ~-.08 ~ ~ ~-5
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=610}] run kill @s
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=500..}] if entity @s[y=40,dy=0] run kill @s

#Boulder
#Summon
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=15}] run summon minecraft:zombie ~ 42 ~ {Tags:["Volvagia","VolvagiaTail","VolvagiaBody"],Rotation:[160f,90f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:dead_brain_coral_fan,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#Up
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=10..205}] run tp @s ~ ~.12 ~ ~ 90
#Rotate
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=206..223}] run tp @s ^ ^-.08 ^-.08 ~ ~-5
#Connect
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] unless entity @s[scores={lifetime=1..226}] unless entity @s[tag=FlyDown] at @e[type=zombie,tag=VolvagiaHead] positioned ^ ^ ^ unless entity @s[distance=...1] facing entity @s feet positioned as @s run tp @s ^ ^ ^-.16 ~ 0
#Fly Down
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=605..613}] run tp @s ^ ^ ^-.08
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=614..623}] run tp @s ^ ^-.08 ^-.04 ~ ~-5
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=624..950}] run tp @s ^ ^ ^-.08 ~ ~-5
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=951}] run kill @s
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=600..}] if entity @s[y=40,dy=0] run kill @s

#Die
execute if entity @s[scores={lifetime=1..9}] rotated as @e[type=zombie,tag=FakeVolvagia] run tp @s ~ ~ ~ ~180 90
#Summon
execute if entity @e[type=zombie,tag=FakeVolvagia,tag=Die] if entity @s[scores={lifetime=20}] run summon minecraft:zombie ~ 42 ~ {Tags:["Volvagia","VolvagiaTail","VolvagiaBody"],Rotation:[-10f,90f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:dead_brain_coral_fan,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#Up
execute if entity @e[type=zombie,tag=FakeVolvagia,tag=Die] if entity @s[scores={lifetime=10..55}] run tp @s ~ ~.08 ~ ~ 90
#Rotate
execute if entity @e[type=zombie,tag=FakeVolvagia,tag=Die] if entity @s[scores={lifetime=56..73}] run tp @s ^ ^-.08 ^-.08 ~ ~-5
#Connect
execute if entity @e[type=zombie,tag=FakeVolvagia,tag=Die] unless entity @s[scores={lifetime=1..76}] at @e[type=zombie,tag=FakeVolvagia] positioned ^ ^ ^ unless entity @s[distance=...1] facing entity @s feet positioned as @s run tp @s ^ ^ ^-.16 ~ 0
