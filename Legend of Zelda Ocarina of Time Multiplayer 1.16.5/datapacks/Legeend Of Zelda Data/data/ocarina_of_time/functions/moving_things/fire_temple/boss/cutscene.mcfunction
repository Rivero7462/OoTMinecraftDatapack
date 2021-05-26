#Set Length
scoreboard objectives add Volvagia dummy
execute store result score @s Volvagia if entity @e[type=zombie,tag=VolvagiaTail]
execute if entity @s[scores={Volvagia=5}] run tag @s add Stop

scoreboard players add @s ArrowCount 1

execute if entity @s[scores={ArrowCount=5}] positioned 3026 45 1956 run playsound minecraft:block.barrel.close ambient @a ~ ~ ~ .5 .5 

execute if entity @s[scores={ArrowCount=20}] run clone 3028 36 1958 3030 35 1960 3026 43 1955
execute if entity @s[scores={ArrowCount=22}] run clone 3028 36 1958 3030 35 1960 3026 42 1955
execute if entity @s[scores={ArrowCount=24}] run clone 3028 36 1958 3030 35 1960 3026 41 1955
execute if entity @s[scores={ArrowCount=26}] run clone 3028 36 1958 3030 35 1960 3026 40 1955
execute if entity @s[scores={ArrowCount=28}] run clone 3028 36 1958 3030 35 1960 3026 39 1955
execute if entity @s[scores={ArrowCount=30}] run clone 3028 36 1958 3030 35 1960 3026 38 1955
execute if entity @s[scores={ArrowCount=32}] run fill 3026 38 1957 3028 38 1955 minecraft:netherrack

#Title
execute if entity @s[scores={ArrowCount=250}] run title @a times 5 50 5
execute if entity @s[scores={ArrowCount=250}] run title @a subtitle "Subterranean Lava Dragon"
execute if entity @s[scores={ArrowCount=250}] run title @a title "Volvagia"

#Appear
execute if entity @s[scores={ArrowCount=50}] run tag @s add Fly
execute if entity @s[scores={ArrowCount=50}] run playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={ArrowCount=50..80}] run particle minecraft:flame 3014 45.1 1956 .3 0 .3 0 1 normal
execute if entity @s[tag=Fly,scores={ArrowCount=63}] positioned as @e[type=area_effect_cloud,tag=DragonFloor5] run tp @s ~ ~-5 ~ 160 -90
execute if entity @s[tag=Fly,scores={ArrowCount=64}] run summon minecraft:zombie ^ ^ ^ {Tags:["Volvagia","VolvagiaBody"],Rotation:[0f,90f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:dead_tube_coral_fan,Count:1b,tag:{CustomModelData:2}}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Fly,scores={ArrowCount=71..116}] run tp @s ~ ~.08 ~ 160 -90
execute if entity @s[tag=Fly,scores={ArrowCount=75}] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2
execute if entity @s[scores={ArrowCount=101}] run function ocarina_of_time:music/fire_boss_theme
#Rotate
execute if entity @s[tag=Fly,scores={ArrowCount=117..134}] run tp @s ^ ^-.08 ^.08 ~ ~5
#Straight
execute if entity @s[tag=Fly,scores={ArrowCount=135..206}] run tp @s ^ ^ ^.08
#Fire Breath
execute if entity @s[tag=Fly,scores={ArrowCount=300..320}] anchored eyes positioned ^ ^.1 ^ anchored feet run function ocarina_of_time:moving_things/fire_temple/boss/fire_breath
execute if entity @s[tag=Fly,scores={ArrowCount=300}] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2
#Right
execute unless entity @e[type=area_effect_cloud,tag=DragonFloor8,tag=Return] if entity @s[tag=Fly,scores={ArrowCount=207..600}] at @s positioned ^ ^ ^1 facing entity @e[type=armor_stand,tag=DragonFollow] eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^.08 ~-3 ~
#Left
execute unless entity @e[type=area_effect_cloud,tag=DragonFloor8,tag=Return] if entity @s[tag=Fly,scores={ArrowCount=207..600}] at @s positioned ^ ^ ^1 facing entity @e[type=armor_stand,tag=DragonFollow] eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^.08 ~3 ~
#Return
execute if entity @s[tag=Fly,scores={ArrowCount=455}] run tag @e[type=area_effect_cloud,tag=DragonFloor8] add Return
#Right
execute unless entity @s[tag=FlyDown] if entity @e[type=area_effect_cloud,tag=DragonFloor8,tag=Return] at @s positioned ^ ^ ^1 facing entity @e[type=area_effect_cloud,tag=DragonFloor,tag=Return] eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^.08 ~-3 ~
#Left
execute unless entity @s[tag=FlyDown] if entity @e[type=area_effect_cloud,tag=DragonFloor8,tag=Return] at @s positioned ^ ^ ^1 facing entity @e[type=area_effect_cloud,tag=DragonFloor,tag=Return] eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^.08 ~3 ~
#FlyDown
execute if entity @s[tag=Fly] positioned ~ ~1 ~ if entity @e[type=area_effect_cloud,tag=DragonFloor,tag=Return,distance=..1] run tag @s add FlyDown
execute if entity @s[tag=Fly,tag=FlyDown] unless entity @s[scores={ArrowCount=700..}] run scoreboard players set @s ArrowCount 700
execute if entity @s[tag=Fly,scores={ArrowCount=700..750}] run tp @s ^ ^ ^.08 ~ ~5
execute if entity @s[tag=Fly,scores={ArrowCount=700}] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2

#Move Fake Player
execute if entity @s[scores={ArrowCount=250}] run tp @e[type=armor_stand,tag=DragonFollow] 3017 49 1951
execute if entity @s[scores={ArrowCount=300}] run tp @e[type=armor_stand,tag=DragonFollow] 3019 48 1958
execute if entity @s[scores={ArrowCount=355}] run tp @e[type=armor_stand,tag=DragonFollow] 3014 47 1958
execute if entity @s[scores={ArrowCount=400}] run tp @e[type=armor_stand,tag=DragonFollow] 3018 47 1956
execute if entity @s[scores={ArrowCount=455..}] run tp @e[type=armor_stand,tag=DragonFollow] 3010 69 1960

#End
#execute if entity @s[scores={ArrowCount=1}] run fill 3019 44 1961 3009 44 1951 minecraft:glass replace minecraft:red_sandstone
#execute if entity @s[scores={ArrowCount=1}] run scoreboard players set @s ArrowCount 859

execute if entity @s[scores={ArrowCount=860..}] run tag @s remove Fly
execute if entity @s[scores={ArrowCount=860..}] run tag @e[type=area_effect_cloud,tag=DragonFloor] remove Return
execute if entity @s[scores={ArrowCount=860..}] run kill @e[type=zombie,tag=VolvagiaBody]
execute if entity @s[scores={ArrowCount=860..}] run kill @e[type=zombie,tag=VolvagiaTail]
execute if entity @s[scores={ArrowCount=860..}] run fill 3019 46 1957 3021 46 1955 minecraft:air
execute if entity @s[scores={ArrowCount=860..}] run tag @s add Attack
execute if entity @s[scores={ArrowCount=860..}] run tag @s add Phase1

execute if entity @s[scores={ArrowCount=860..}] run scoreboard players set @s ArrowCount 0
