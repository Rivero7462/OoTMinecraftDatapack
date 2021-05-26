execute unless entity @s[tag=FinalGanonDeath] run scoreboard players set @s GameTimer 0
tag @s add FinalGanonDeath
scoreboard players add @s GameTimer 1
effect give @a regeneration 1 10 true

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=1}] run gamemode spectator @a
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=1}] run stopsound @a music
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=1}] run tag @e[type=armor_stand,tag=GanonBody] remove Attack
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=1}] run tp @e[type=armor_stand,tag=PrincessZelda5] -594 52 270 45 0
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=1..35}] run tp @a -594 52 276 90 0

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=15}] at @a run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 2 2
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=15..20}] as @e[type=armor_stand,tag=GanonBody] at @s run tp @s -601 54.7 276 -90 0
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=15..20}] run data merge entity @e[type=armor_stand,tag=GanonRightArm,limit=1] {HandItems:[{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:120}},{}]}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=15..20}] run data merge entity @e[type=armor_stand,tag=GanonRightArm,limit=1] {Pose:{RightArm:[-130f,-30f,30f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=15..20}] run data merge entity @e[type=armor_stand,tag=GanonLeftArm,limit=1] {Pose:{LeftArm:[-130f,30f,-30f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=15..20}] run data merge entity @e[type=armor_stand,tag=GanonBody,limit=1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:122}}]}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=15..20}] as @e[type=armor_stand,tag=GanonBody] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=GanonTail] ^ ^-1.7 ^-1.8 ~ 0
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=15..20}] as @e[type=armor_stand,tag=GanonBody] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=GanonRightArm] ^1.1 ^.1 ^ ~ 0
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=15..20}] as @e[type=armor_stand,tag=GanonBody] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=GanonLeftArm] ^-1.1 ^.1 ^ ~ 0

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=35}] run data merge entity @e[type=armor_stand,tag=PrincessZelda5,limit=1] {Pose:{Head:[-20f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=35..134}] run tp @a -594 52 276 180 0

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=45}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Six Sages... Now!"}]

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=65}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .3 .6
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=65}] run data merge entity @e[type=armor_stand,tag=PrincessZelda5,limit=1] {Pose:{Head:[-30f,0f,0f],LeftArm:[-10f,0f,-130f],RightArm:[-10f,0f,130f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=65..100}] run particle minecraft:dust 1 1 0 2 -594 55 270 0.2 0.2 0.2 0 2 normal
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=105}] run tp @e[type=armor_stand,tag=PrincessZelda5] -594 51.7 270 45 0
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=105}] run data merge entity @e[type=armor_stand,tag=PrincessZelda5,limit=1] {Pose:{Head:[0f,0f,0f],LeftArm:[-30f,0f,0f],RightArm:[-20f,0f,20f],RightLeg:[-40f,0f,0f],LeftLeg:[50f,0f,0f]}}

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=135..155}] run tp @a 993 26 1467 63 90

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run time set day
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run data merge entity @e[type=armor_stand,tag=Rauru,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run data merge entity @e[type=armor_stand,tag=SacredImpa,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run data merge entity @e[type=armor_stand,tag=SacredNabooru,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run data merge entity @e[type=armor_stand,tag=SacredRuto,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run data merge entity @e[type=armor_stand,tag=SacredDarunia,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run data merge entity @e[type=armor_stand,tag=SacredSaria,limit=1] {Pose:{Head:[0f,0f,0f]}}

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run tp @e[type=armor_stand,tag=Rauru] 989 26 1469 -116 0
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run tp @e[type=armor_stand,tag=SacredImpa] 994 26 1472
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run tp @e[type=armor_stand,tag=SacredNabooru] 999 26 1469
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run tp @e[type=armor_stand,tag=SacredRuto] 999 26 1463
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run tp @e[type=armor_stand,tag=SacredDarunia] 994 26 1461
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run data merge entity @e[type=armor_stand,tag=SacredDarunia,limit=1] {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1088939652,90785587,-1485951281,-1895189175],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTNiYTk3NDcwNTg4NmMwYzFhY2FhNzk0MTY5NmE0ZTRiMjI0MDk1NGIzZWI3Nzk2OGVmNmJmZDdiOWFiZWI0NCJ9fX0="}]}}}}],Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=155}] run tp @e[type=armor_stand,tag=SacredSaria] 989 26 1463

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=156..294}] run tp @a 993 26 1467 63 0
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=170}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Ancient Creators of Hyrule!"}]

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=215}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Now open the sealed door, and send the Evil Incarnation of Darkness into the void of the Evil Realm!"}]

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=280}] run data merge entity @e[type=armor_stand,tag=Rauru,limit=1] {Pose:{Head:[-30f,0f,0f],LeftArm:[-10f,0f,-130f],RightArm:[-10f,0f,130f]}}

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=295}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.56
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=295..304}] run tp @a 994 26 1464 180 0
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=300}] run data merge entity @e[type=armor_stand,tag=SacredDarunia,limit=1] {Pose:{LeftArm:[-70f,-40f,0f],RightArm:[-70f,40f,0f]}}

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=305}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.56
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=305..314}] run tp @a 996 26 1465 -124 0
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=310}] run data merge entity @e[type=armor_stand,tag=SacredRuto,limit=1] {Pose:{LeftArm:[-70f,40f,0f],RightArm:[-70f,-40f,0f]}}

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=315}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.56
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=315..324}] run tp @a 996 26 1467 -56 0
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=320}] run data merge entity @e[type=armor_stand,tag=SacredNabooru,limit=1] {Pose:{LeftArm:[-90f,40f,0f],RightArm:[-90f,-40f,0f]}}

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=325}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.56
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=325..334}] run tp @a 994 26 1468 0 0
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=330}] run data merge entity @e[type=armor_stand,tag=SacredImpa,limit=1] {Pose:{LeftArm:[-70f,40f,0f],RightArm:[-80f,-40f,0f]}}

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=335}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.56
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=335..409}] run tp @a 992 26 1465 124 0
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=340}] run data merge entity @e[type=armor_stand,tag=SacredSaria,limit=1] {Pose:{LeftArm:[-80f,40f,0f],RightArm:[-80f,-40f,0f]}}

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=360}] run data merge entity @e[type=armor_stand,tag=SacredSaria,limit=1] {Pose:{Head:[-30f,0f,0f],LeftArm:[-10f,0f,-130f],RightArm:[-10f,0f,130f]}}

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=380}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .3 .6
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=380}] at @e[tag=SacredSaria] run particle minecraft:flash ^ ^2 ^1 0 0 0 0 1 normal
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=380}] run tp @e[type=armor_stand,tag=SacredSaria] 989 21 1463
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=380}] run tp @e[type=armor_stand,tag=Rauru] 989 21 1469
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=380}] run tp @e[type=armor_stand,tag=SacredNabooru] 999 21 1469
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=380}] run tp @e[type=armor_stand,tag=SacredDarunia] 994 21 1461
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=380..490}] run particle minecraft:dust 0 1 0 2 989 27 1463 0.2 0.2 0.2 0 2 normal
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=380..490}] run particle minecraft:dust 1 0 0 2 994 27 1461 0.2 0.2 0.2 0 2 normal
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=380..490}] run particle minecraft:dust 1 0.5 0 2 999 27 1469 0.2 0.2 0.2 0 2 normal
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=380..490}] run particle minecraft:dust 1 1 0 2 989 27 1469 0.2 0.2 0.2 0 2 normal

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=410..479}] run tp @a 1006 27 1461 65 5

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=450}] run tp @e[type=armor_stand,tag=Ganondorf8] 969 34 1417
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=450}] run data merge entity @e[tag=Ganondorf8,limit=1] {Pose:{Head:[0f,0f,0f]}}

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=450}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .3 .7
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=450}] at @e[tag=SacredImpa] run particle minecraft:flash ^-1 ^2 ^ 0 0 0 0 1 normal
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=450}] at @e[tag=SacredRuto] run particle minecraft:flash ^ ^2 ^-1 0 0 0 0 1 normal
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=450}] run tp @e[type=armor_stand,tag=SacredRuto] 999 21 1463
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=450}] run tp @e[type=armor_stand,tag=SacredImpa] 994 21 1472
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=450..490}] run particle minecraft:dust 0.5 0 0.4 2 994 27 1472 0.2 0.2 0.2 0 2 normal
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=450..490}] run particle minecraft:dust 0 0 1 2 999 27 1463 0.2 0.2 0.2 0 2 normal

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=480..519}] run tp @a 1005 38 1463 75 50

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=490}] at @a run playsound minecraft:block.respawn_anchor.set_spawn ambient @a ~ ~ ~ 1 2
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=490..}] run particle minecraft:composter 994 28 1466 3 0 3 1 50 normal
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=490..}] run particle minecraft:flash 994 27 1466 3 0 3 1 100 normal
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=490..}] run particle minecraft:dust 1 1 1 5 994 26 1466 3 0 3 1 50 normal

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=520..560}] run tp @a 1015 33 1456 65 20

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=561..850}] run tp @a 967 34 1417 90 0
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=561}] run function ocarina_of_time:music/chamber_of_sages

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=561}] run data merge entity @e[type=armor_stand,tag=Rauru,limit=1] {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=561}] run data merge entity @e[type=armor_stand,tag=SacredDarunia,limit=1] {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=561}] run data merge entity @e[type=armor_stand,tag=SacredRuto,limit=1] {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=561}] run data merge entity @e[type=armor_stand,tag=SacredNabooru,limit=1] {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=561}] run data merge entity @e[type=armor_stand,tag=SacredImpa,limit=1] {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=561}] run data merge entity @e[type=armor_stand,tag=SacredSaria,limit=1] {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=580}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"YOU..."}]
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=630}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"CURSE YOU...ZELDA! CURSE YOU...SAGES!"}]

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=690}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"CURSE YOU..."},{"selector":"@p"},{"text":"!"}]
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=690}] run tp @e[type=armor_stand,tag=Ganondorf8] 965 34.3 1417


execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=750}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"Someday...when the seal is broken..."}]
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=800}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"That is when I will exterminate your descendants!"}]

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=820..940}] as @e[type=armor_stand,tag=Ganondorf8] at @s run data merge entity @e[tag=Ganondorf8,limit=1] {Pose:{Head:[-30f,0f,0f]}}
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=820..940}] as @e[type=armor_stand,tag=Ganondorf8] at @s run tp @s ~-.1 ~ ~
execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=860}] as @e[type=armor_stand,tag=Ganondorf8] at @s run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"As long as the Triforce of Power is in my hand..."}]

execute if entity @s[tag=FinalGanonDeath,scores={GameTimer=941}] run function ocarina_of_time:moving_things/final_platform/boss/end
