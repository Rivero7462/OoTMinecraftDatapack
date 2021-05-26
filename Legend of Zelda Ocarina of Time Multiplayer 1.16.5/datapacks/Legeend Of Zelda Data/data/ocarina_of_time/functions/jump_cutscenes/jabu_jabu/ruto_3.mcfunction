execute unless entity @s[scores={GameTimer=0..}] run fill 1698 25 1268 1698 25 1268 minecraft:barrier
execute unless entity @s[scores={GameTimer=0..}] run fill 1697 25 1269 1697 25 1269 minecraft:barrier
execute unless entity @s[scores={GameTimer=0..}] run fill 1698 25 1270 1698 25 1270 minecraft:barrier
execute unless entity @s[scores={GameTimer=0..}] run fill 1699 25 1269 1699 25 1269 minecraft:barrier
execute unless entity @s[scores={GameTimer=0..}] run tp @a 1698 24.5 1269 180 ~
execute unless entity @s[scores={GameTimer=0..}] run tp @s 1698 26 1266 180 ~
execute unless entity @s[scores={GameTimer=0..}] run tag @a add NoOcarina
execute unless entity @s[scores={GameTimer=0..}] run tag @a remove CarryRuto
execute unless entity @s[scores={GameTimer=0..}] run scoreboard objectives remove CrouchRuto
execute unless entity @s[scores={GameTimer=0..}] run data merge entity @s {Pose:{RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute unless entity @s[scores={GameTimer=0..}] run tag @s add FindSaphire

execute if entity @s[tag=FindSaphire] run scoreboard players add @s GameTimer 1

execute if entity @s[scores={GameTimer=20..50}] run tp @s ~ ~ ~-.1
execute if entity @s[scores={GameTimer=55}] run data merge entity @s {Rotation:[0f],Pose:{Head:[-30f,0f,0f],LeftArm:[-120f,-10f,0f],RightArm:[-120f,10f,0f]}}
execute if entity @s[scores={GameTimer=55}] run tp @e[type=armor_stand,tag=Saphire] 1698 26.5 1262
execute if entity @s[scores={GameTimer=55}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={GameTimer=56}] run tag @s remove FindSaphire

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Princess Ruto got the "},{"text":"Spiritual Stone","color":"blue"},{"text":"!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a {"text":"But why Princess Ruto?"}
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"Oh, my goodness! I finally found...my mother's stone..."}]
execute if entity @a[scores={click=5}] run kill @e[type=armor_stand,tag=Saphire]
execute if entity @a[scores={click=5}] run data merge entity @s {Rotation:[0f],Pose:{Head:[15f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"I got very upset when Lord Jabu-Jabu swallowed it..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"While I was feeding him, he suddenly swallowed me! I was so surprised, I dropped it inside..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"But now that I've found it, I don't need to be in here anymore!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"So take me home right now!"}]
execute if entity @a[scores={click=13}] run tag @s add GoAway
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14

execute if entity @s[tag=GoAway] run scoreboard players add @s GameTimer 1

#20
execute if entity @s[scores={GameTimer=65}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=65}] run clone 1689 4 1253 1699 6 1243 1693 24 1256
execute if entity @s[scores={GameTimer=65}] run fill 1693 24 1266 1703 24 1256 minecraft:purpur_slab[waterlogged=true]
execute if entity @s[scores={GameTimer=68}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=68}] run clone 1689 4 1253 1699 6 1243 1693 25 1256
execute if entity @s[scores={GameTimer=71}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=71}] run clone 1689 4 1253 1699 6 1243 1693 26 1256
execute if entity @s[scores={GameTimer=74}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=74}] run clone 1689 4 1253 1699 6 1243 1693 27 1256
execute if entity @s[scores={GameTimer=77}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=77}] run clone 1689 4 1253 1699 6 1243 1693 28 1256
execute if entity @s[scores={GameTimer=80}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=80}] run clone 1689 4 1253 1699 6 1243 1693 29 1256
execute if entity @s[scores={GameTimer=83}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=83}] run clone 1689 4 1253 1699 6 1243 1693 30 1256
execute if entity @s[scores={GameTimer=86}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=86}] run clone 1689 4 1253 1699 6 1243 1693 31 1256
execute if entity @s[scores={GameTimer=89}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=89}] run clone 1689 4 1253 1699 6 1243 1693 32 1256
execute if entity @s[scores={GameTimer=92}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=92}] run clone 1689 4 1253 1699 6 1243 1693 33 1256
execute if entity @s[scores={GameTimer=95}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=95}] run clone 1689 4 1253 1699 6 1243 1693 34 1256
execute if entity @s[scores={GameTimer=98}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=98}] run clone 1689 4 1253 1699 6 1243 1693 35 1256
execute if entity @s[scores={GameTimer=101}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=101}] run clone 1689 4 1253 1699 6 1243 1693 36 1256
execute if entity @s[scores={GameTimer=104}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=104}] run clone 1689 4 1253 1699 6 1243 1693 37 1256
execute if entity @s[scores={GameTimer=107}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=107}] run clone 1689 4 1253 1699 6 1243 1693 38 1256
execute if entity @s[scores={GameTimer=110}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=110}] run clone 1689 4 1253 1699 6 1243 1693 39 1256
execute if entity @s[scores={GameTimer=113}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=113}] run clone 1689 4 1253 1699 6 1243 1693 40 1256
execute if entity @s[scores={GameTimer=116}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=116}] run clone 1689 4 1253 1699 6 1243 1693 41 1256
execute if entity @s[scores={GameTimer=119}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=119}] run clone 1677 4 1269 1687 6 1259 1693 42 1256
execute if entity @s[scores={GameTimer=122}] run tp @s ~ ~1 ~
execute if entity @s[scores={GameTimer=122}] run clone 1689 4 1269 1699 6 1259 1693 43 1256

execute if entity @s[scores={GameTimer=130}] run tp @s 1681 44 1333
execute if entity @s[scores={GameTimer=130}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"Keeeyaaaah! What is this?! An octopus?!"}]
execute if entity @s[scores={GameTimer=130}] run summon minecraft:zombie 1698 48 1261 {Tags:["Octo","BigOcto","Invisible","Fire"],Rotation:[0f],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:17}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:17,Attributes:[{Name:"generic.max_health",Base:17},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={GameTimer=130}] run summon minecraft:armor_stand 1698 24.5 1261 {Tags:["OctoSpin","BigOcto"],Rotation:[5f],NoGravity:1b,Invisible:1b}

execute if entity @s[scores={GameTimer=130..}] as @e[type=zombie,tag=Octo] at @s if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-1 ~
execute if entity @s[scores={GameTimer=160}] run clone 1677 5 1269 1687 7 1259 1693 43 1256
execute if entity @s[scores={GameTimer=163}] run clone 1689 4 1281 1699 6 1271 1693 42 1256
execute if entity @s[scores={GameTimer=166}] run clone 1689 5 1253 1699 7 1243 1693 41 1256
execute if entity @s[scores={GameTimer=169}] run clone 1689 5 1253 1699 7 1243 1693 40 1256
execute if entity @s[scores={GameTimer=172}] run clone 1689 5 1253 1699 7 1243 1693 39 1256
execute if entity @s[scores={GameTimer=175}] run clone 1689 5 1253 1699 7 1243 1693 38 1256
execute if entity @s[scores={GameTimer=178}] run clone 1689 5 1253 1699 7 1243 1693 37 1256
execute if entity @s[scores={GameTimer=181}] run clone 1689 5 1253 1699 7 1243 1693 36 1256
execute if entity @s[scores={GameTimer=184}] run clone 1689 5 1253 1699 7 1243 1693 35 1256
execute if entity @s[scores={GameTimer=187}] run clone 1689 5 1253 1699 7 1243 1693 34 1256
execute if entity @s[scores={GameTimer=190}] run clone 1689 5 1253 1699 7 1243 1693 33 1256
execute if entity @s[scores={GameTimer=193}] run clone 1689 5 1253 1699 7 1243 1693 32 1256
execute if entity @s[scores={GameTimer=196}] run clone 1689 5 1253 1699 7 1243 1693 31 1256
execute if entity @s[scores={GameTimer=199}] run clone 1689 5 1253 1699 7 1243 1693 30 1256
execute if entity @s[scores={GameTimer=202}] run clone 1689 5 1253 1699 7 1243 1693 29 1256
execute if entity @s[scores={GameTimer=205}] run clone 1689 5 1253 1699 7 1243 1693 28 1256
execute if entity @s[scores={GameTimer=208}] run clone 1689 5 1253 1699 7 1243 1693 27 1256
execute if entity @s[scores={GameTimer=211}] run clone 1689 5 1253 1699 7 1243 1693 26 1256
execute if entity @s[scores={GameTimer=214}] run clone 1689 5 1253 1699 7 1243 1693 25 1256
execute if entity @s[scores={GameTimer=217}] run clone 1689 5 1253 1699 7 1243 1693 24 1256
execute if entity @s[scores={GameTimer=217}] run fill 1693 24 1266 1703 24 1256 minecraft:purpur_slab[waterlogged=true] replace minecraft:air

execute if entity @s[scores={GameTimer=218..}] run tag @s remove HoldRuto
execute if entity @s[scores={GameTimer=218..}] run tag @a remove NoOcarina
execute if entity @s[scores={GameTimer=218..}] run function ocarina_of_time:music/mini_boss
execute if entity @s[scores={GameTimer=218..}] run tag @e[type=area_effect_cloud,tag=MiniBossPlatform] add Version1
execute if entity @s[scores={GameTimer=218..}] run fill 1700 17 1259 1700 17 1259 minecraft:gold_block
execute if entity @s[scores={GameTimer=218..}] run tag @s remove GoAway
execute if entity @s[scores={GameTimer=218..}] run fill 1699 25 1270 1697 25 1268 minecraft:air
execute if entity @s[scores={GameTimer=218..}] run tag @a remove MeetRuto3
execute if entity @s[scores={GameTimer=218..}] run scoreboard objectives remove click
execute if entity @s[scores={GameTimer=218..}] run scoreboard players set @s GameTimer 0
