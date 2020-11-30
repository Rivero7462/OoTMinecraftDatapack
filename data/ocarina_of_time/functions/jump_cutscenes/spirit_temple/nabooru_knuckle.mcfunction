execute unless entity @a[scores={click=0..}] run fill -28 117 825 -28 117 825 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -27 117 824 -27 117 824 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -26 117 825 -26 117 825 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -27 117 826 -27 117 826 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a -27 116 825
execute unless entity @a[scores={click=0..}] run scoreboard players set @s timer 0
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/kotake_koume
execute unless entity @a[scores={click=0..}] run tp @s -28 116 811
execute unless entity @a[scores={click=0..}] run tp @e[type=armor_stand,tag=Koume2] -26 116 811
execute unless entity @a[scores={click=0..}] run summon minecraft:zombie -27 116 810.0 {Tags:["NabooruKnuckle","Invisible"],Rotation:[0f],Health:85,Attributes:[{Name:generic.max_health,Base:85}],NoGravity:1b,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/nothing",NoAI:1b}
execute unless entity @a[scores={click=0..}] run summon minecraft:armor_stand -27 116 810.0 {Tags:["NabooruKnuckle"],NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:1b,Rotation:[0f],Pose:{RightArm:[-90f,-40f,90f]},ArmorItems:[{},{},{},{id:"cobblestone",Count:1,tag:{CustomModelData:99}}],HandItems:[{id:"cobblestone",Count:1b,tag:{CustomModelData:100}},{id:"cobblestone",Count:1b,tag:{CustomModelData:101}}],DisabledSlots:4144959}
execute unless entity @a[scores={click=0..}] run fill -25 112 799 -25 112 799 minecraft:gold_block
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"Ho ho ho! Looks like someone is here, Koume."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"Hee hee hee! Looks like it, Kotake!"}]
execute if entity @a[scores={click=3}] run data merge entity @e[type=armor_stand,tag=Koume2,limit=1] {Pose:{Head:[0f,-120f,0f]}}
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"What an outrageous fellow he is to intrude so boldly into our temple... Ho ho ho!"}]
execute if entity @a[scores={click=5}] run data merge entity @s {Pose:{Head:[0f,20f,0f],Body:[10f,0f,0f],RightArm:[-70f,40f,0f],LeftArm:[-40f,30f,0f],RightLeg:[-60f,20f,0f],LeftLeg:[-60f,-20f,0f]}}
execute if entity @a[scores={click=5}] run data merge entity @e[type=armor_stand,tag=Koume2,limit=1] {Pose:{Head:[0f,20f,0f],Body:[10f,0f,0f],RightArm:[-70f,40f,0f],LeftArm:[-40f,30f,0f],RightLeg:[-60f,20f,0f],LeftLeg:[-60f,-20f,0f]}}
execute if entity @a[scores={click=5..}] if entity @s[scores={timer=0..17}] run scoreboard players add @s timer 1
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"We should teach this outrageous fellow a lesson! Hee hee hee!"}]
execute if entity @a[scores={click=7..}] if entity @s[scores={timer=18..29}] run scoreboard players add @s timer 1
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"Oh, loyal minion..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"Destroy this intruder on our behalf!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=11..}] if entity @s[scores={timer=30..}] run scoreboard players add @s timer 1

#Brooms
execute as @e[type=armor_stand,tag=KotakeBroom2] at @e[type=armor_stand,tag=Kotake2] rotated as @e[type=armor_stand,tag=Kotake2] run tp @s ^ ^ ^.3 ~ 0
execute as @e[type=armor_stand,tag=KoumeBroom2] at @e[type=armor_stand,tag=Koume2] rotated as @e[type=armor_stand,tag=Koume2] run tp @s ^ ^ ^.3 ~ 0

#Movements
execute if entity @s[scores={timer=1}] run summon minecraft:armor_stand -28 115 811 {Tags:["KotakeBroom2"],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:97}}],Invisible:1b,NoGravity:1b}
execute if entity @s[scores={timer=1}] run summon minecraft:armor_stand -26 115 811 {Tags:["KoumeBroom2"],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:97}}],Invisible:1b,NoGravity:1b}
execute if entity @s[scores={timer=5..15}] run tp @s ~ ~.1 ~.3 ~15 0
execute if entity @s[scores={timer=5..17}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~.1 ~.3 ~-15 0

execute if entity @s[scores={timer=19..29}] run tp @s ~-.2 ~ ~ -90 0
execute if entity @s[scores={timer=19..29}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~.2 ~ ~ 90 0

execute if entity @s[scores={timer=31..49}] run tp @s ~.1 ~-.05 ~-.3 -160 0
execute if entity @s[scores={timer=31..51}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~-.1 ~-.05 ~-.3 160 0

execute if entity @s[scores={timer=50}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={timer=52}] as @e[type=armor_stand,tag=Koume2] at @s facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0

execute if entity @s[scores={timer=80..100}] run tp @s ~ ~ ~ ~30 ~
execute if entity @s[scores={timer=80..100}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~ ~ ~30 ~
execute if entity @s[scores={timer=80..100}] run particle minecraft:soul_fire_flame ~ ~1 ~ .3 .5 .3 0 10 normal
execute if entity @s[scores={timer=80..100}] as @e[type=armor_stand,tag=Koume2] at @s run particle minecraft:flame ~ ~1 ~ .3 .5 .3 0 10 normal

execute if entity @s[scores={timer=101}] run tp @s -29 112 799
execute if entity @s[scores={timer=101}] run tp @e[type=armor_stand,tag=Koume2] -28 112 799
execute if entity @s[scores={timer=101}] run kill @e[type=armor_stand,tag=KotakeBroom2]
execute if entity @s[scores={timer=101}] run kill @e[type=armor_stand,tag=KoumeBroom2]

execute if entity @s[scores={timer=115}] run tag @e[type=armor_stand,tag=NabooruKnuckle] add Attack
execute if entity @s[scores={timer=115}] run function ocarina_of_time:music/mini_boss

execute if entity @s[scores={timer=140}] run fill -26 112 799 -26 112 799 minecraft:gold_block
execute if entity @s[scores={timer=140}] run fill -28 117 826 -26 117 824 minecraft:air

execute if entity @s[scores={timer=140}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=140}] run tag @a remove NabooruAttack
execute if entity @s[scores={timer=140}] run tag @a remove NabooruAttack2
execute if entity @s[scores={timer=140}] run scoreboard objectives remove click

#Float
execute if entity @a[scores={click=5..}] unless entity @s[scores={timer=80..}] unless entity @s[scores={timer=31..52}] unless entity @s[scores={timer=19..29}] unless entity @s[scores={timer=1..17}] run scoreboard players add @s lifetime 1
execute if entity @a[scores={click=5..}] unless entity @s[scores={timer=80..}] unless entity @s[scores={timer=31..52}] unless entity @s[scores={timer=19..29}] unless entity @s[scores={timer=1..17}] if entity @s[scores={lifetime=1..3}] run tp @s ~ ~.05 ~
execute if entity @a[scores={click=5..}] unless entity @s[scores={timer=80..}] unless entity @s[scores={timer=31..52}] unless entity @s[scores={timer=19..29}] unless entity @s[scores={timer=1..17}] if entity @s[scores={lifetime=1..3}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~.05 ~
execute if entity @a[scores={click=5..}] unless entity @s[scores={timer=80..}] unless entity @s[scores={timer=31..52}] unless entity @s[scores={timer=19..29}] unless entity @s[scores={timer=1..17}] if entity @s[scores={lifetime=6..8}] run tp @s ~ ~-.05 ~
execute if entity @a[scores={click=5..}] unless entity @s[scores={timer=80..}] unless entity @s[scores={timer=31..52}] unless entity @s[scores={timer=19..29}] unless entity @s[scores={timer=1..17}] if entity @s[scores={lifetime=6..8}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~-.05 ~
execute if entity @a[scores={click=5..}] unless entity @s[scores={timer=80..}] unless entity @s[scores={timer=31..52}] unless entity @s[scores={timer=19..29}] unless entity @s[scores={timer=1..17}] if entity @s[scores={lifetime=11..}] run scoreboard players set @s lifetime 0
