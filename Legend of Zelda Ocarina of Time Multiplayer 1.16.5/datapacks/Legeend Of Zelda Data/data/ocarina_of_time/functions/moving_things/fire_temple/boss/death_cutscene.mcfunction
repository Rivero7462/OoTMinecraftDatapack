scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=1}] run tp @e[type=armor_stand,tag=DragonFollow] 3011 47 1956

#Sounds
execute if entity @s[tag=Die,scores={ArrowCount=45}] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2
execute if entity @s[tag=Die,scores={ArrowCount=240}] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2
execute if entity @s[tag=Die,scores={ArrowCount=260}] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2
execute if entity @s[tag=Die,scores={ArrowCount=280}] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2

#Appear
execute if entity @s[scores={ArrowCount=1}] run tag @s add Die
execute if entity @s[scores={ArrowCount=1}] run playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={ArrowCount=1..31}] run particle minecraft:flame 3014 45.1 1956 .3 0 .3 0 1 normal
execute if entity @s[tag=Die,scores={ArrowCount=14}] positioned as @e[type=area_effect_cloud,tag=DragonFloor5] run tp @s ~ ~-5 ~ -10 -90
execute if entity @s[tag=Die,scores={ArrowCount=15}] run summon minecraft:zombie ^ ^ ^ {Tags:["Volvagia","VolvagiaBody"],Rotation:[-10f,90f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:dead_tube_coral_fan,Count:1b,tag:{CustomModelData:2}}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Die,scores={ArrowCount=22..67}] run tp @s ~ ~.08 ~ -10 -90
#Rotate
execute if entity @s[tag=Die,scores={ArrowCount=68..85}] run tp @s ^ ^-.08 ^.08 ~ ~5
#Straight
execute if entity @s[tag=Die,scores={ArrowCount=86..157}] run tp @s ^ ^ ^.08
#Right
execute if entity @s[tag=Die,scores={ArrowCount=158..350}] at @s positioned ^ ^ ^1 facing entity @e[type=armor_stand,tag=DragonFollow] eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^.08 ~-3 ~
#Left
execute if entity @s[tag=Die,scores={ArrowCount=158..350}] at @s positioned ^ ^ ^1 facing entity @e[type=armor_stand,tag=DragonFollow] eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^.08 ~3 ~

execute if entity @s[tag=Die,scores={ArrowCount=301..310}] as @e[type=zombie,tag=VolvagiaTail,sort=furthest,limit=1] at @s run tp @s ~ ~-.3 ~
execute if entity @s[tag=Die,scores={ArrowCount=311}] as @e[type=zombie,tag=VolvagiaTail,sort=furthest,limit=1] run kill @s
execute if entity @s[tag=Die,scores={ArrowCount=311..320}] as @e[type=zombie,tag=VolvagiaTail,sort=furthest,limit=1] at @s run tp @s ~ ~-.3 ~
execute if entity @s[tag=Die,scores={ArrowCount=321}] as @e[type=zombie,tag=VolvagiaTail,sort=furthest,limit=1] run kill @s
execute if entity @s[tag=Die,scores={ArrowCount=321..330}] as @e[type=zombie,tag=VolvagiaTail,sort=furthest,limit=1] at @s run tp @s ~ ~-.3 ~
execute if entity @s[tag=Die,scores={ArrowCount=331}] as @e[type=zombie,tag=VolvagiaTail,sort=furthest,limit=1] run kill @s
execute if entity @s[tag=Die,scores={ArrowCount=331..340}] as @e[type=zombie,tag=VolvagiaTail,sort=furthest,limit=1] at @s run tp @s ~ ~-.3 ~
execute if entity @s[tag=Die,scores={ArrowCount=341}] as @e[type=zombie,tag=VolvagiaTail,sort=furthest,limit=1] run kill @s
execute if entity @s[tag=Die,scores={ArrowCount=341..350}] as @e[type=zombie,tag=VolvagiaBody] at @s run tp @s ~ ~-.3 ~
execute if entity @s[tag=Die,scores={ArrowCount=351}] as @e[type=zombie,tag=VolvagiaBody] run kill @s
execute if entity @s[tag=Die,scores={ArrowCount=351..360}] run tp @s ~ ~-.17 ~

execute if entity @s[tag=Die,scores={ArrowCount=311}] run playsound minecraft:block.anvil.break ambient @a ~ ~ ~ 1 .5
execute if entity @s[tag=Die,scores={ArrowCount=321}] run playsound minecraft:block.anvil.break ambient @a ~ ~ ~ 1 .5
execute if entity @s[tag=Die,scores={ArrowCount=331}] run playsound minecraft:block.anvil.break ambient @a ~ ~ ~ 1 .5
execute if entity @s[tag=Die,scores={ArrowCount=341}] run playsound minecraft:block.anvil.break ambient @a ~ ~ ~ 1 .5
execute if entity @s[tag=Die,scores={ArrowCount=351}] run playsound minecraft:block.anvil.break ambient @a ~ ~ ~ 1 .5
execute if entity @s[tag=Die,scores={ArrowCount=361}] run playsound minecraft:block.anvil.break ambient @a ~ ~ ~ 1 .5

execute if entity @s[tag=Die,scores={ArrowCount=311}] at @e[type=zombie,tag=VolvagiaTail,sort=furthest,limit=1] run particle minecraft:block minecraft:red_sandstone ~ 45 ~ .4 .2 .4 1 10 normal
execute if entity @s[tag=Die,scores={ArrowCount=321}] at @e[type=zombie,tag=VolvagiaTail,sort=furthest,limit=1] run particle minecraft:block minecraft:red_sandstone ~ 45 ~ .4 .2 .4 1 10 normal
execute if entity @s[tag=Die,scores={ArrowCount=331}] at @e[type=zombie,tag=VolvagiaTail,sort=furthest,limit=1] run particle minecraft:block minecraft:red_sandstone ~ 45 ~ .4 .2 .4 1 10 normal
execute if entity @s[tag=Die,scores={ArrowCount=341}] at @e[type=zombie,tag=VolvagiaTail,sort=furthest,limit=1] run particle minecraft:block minecraft:red_sandstone ~ 45 ~ .4 .2 .4 1 10 normal
execute if entity @s[tag=Die,scores={ArrowCount=351}] at @e[type=zombie,tag=VolvagiaBody] run particle minecraft:block minecraft:red_sandstone ~ 45 ~ .4 .2 .4 1 10 normal
execute if entity @s[tag=Die,scores={ArrowCount=361}] run particle minecraft:block minecraft:red_sandstone ~ 45 ~ .4 .2 .4 1 10 normal

execute if entity @s[tag=Die,scores={ArrowCount=360}] run kill @e[type=armor_stand,tag=DragonFollow]
execute if entity @s[tag=Die,scores={ArrowCount=360}] run kill @e[type=area_effect_cloud,tag=DragonFloor]
execute if entity @s[tag=Die,scores={ArrowCount=360}] run tag @a remove Fake1
execute if entity @s[tag=Die,scores={ArrowCount=360}] run tag @a remove Fake2
execute if entity @s[tag=Die,scores={ArrowCount=360}] run tag @a remove Fake3
execute if entity @s[tag=Die,scores={ArrowCount=360}] run fill 3021 46 1957 3019 46 1955 minecraft:air
execute if entity @s[tag=Die,scores={ArrowCount=360}] run fill 3014 44 1955 3014 44 1957 minecraft:light_blue_concrete
execute if entity @s[tag=Die,scores={ArrowCount=360}] run fill 3015 44 1956 3013 44 1956 minecraft:light_blue_concrete

execute if entity @s[tag=Die,scores={ArrowCount=420}] run tag @a add StartFireMedallion
execute if entity @s[tag=Die,scores={ArrowCount=420}] run tag @a remove Boss
execute if entity @s[tag=Die,scores={ArrowCount=420}] run clone 3014 39 1953 3014 39 1953 3009 45 1957
execute if entity @s[tag=Die,scores={ArrowCount=420}] run kill @s
