execute if entity @s[tag=Fly] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..735}] run kill @e[tag=DekuBabaBody1]
execute if entity @s[scores={lifetime=1..735}] run kill @e[tag=DekuBabaBody2]
execute if entity @s[scores={lifetime=1..735}] run kill @e[tag=DekuBabaBody3]
execute if entity @s[scores={lifetime=1..735}] run kill @e[type=item]
execute if entity @s[scores={lifetime=1..735}] run gamemode spectator @a
execute if entity @s[scores={lifetime=1..735}] run kill @e[type=armor_stand,tag=OwlFly]
execute if entity @s[scores={lifetime=1..735}] run tp @a @s

#Steps
execute if entity @s[scores={lifetime=1}] run function ocarina_of_time:music/navi_fly
execute if entity @s[scores={lifetime=1}] run tp @s -488.500 72.00000 -641.500 270.0 20.0
execute if entity @s[scores={lifetime=2..51}] run tp @s ~-0.12 ~-0.19 ~-0.0159999999999991 ~-3.572 ~0
execute if entity @s[scores={lifetime=52..121}] run tp @s ~-0.375842857142857 ~0.0546694285714285 ~0.0256857142857143 ~-0.0471428571428573 ~-0.187142857142857
execute if entity @s[scores={lifetime=122..141}] run tp @s ~-0.128000000000003 ~0 ~0.0460499999999968 ~-2.34 ~0.145
execute if entity @s[scores={lifetime=142..181}] run tp @s ~-0.027525 ~-0.0331714999999999 ~0.208199999999999 ~-1.0175 ~0.1425
execute if entity @s[scores={lifetime=182..201}] run tp @s ~-0.031049999999999 ~0 ~0.15625 ~4.075 ~-0.09
execute if entity @s[scores={lifetime=202..241}] run tp @s ~-0.515225000000001 ~-0.0375 ~0.0207000000000022 ~0.1975 ~0.18
execute if entity @s[scores={lifetime=242..281}] run tp @s ~-0.125 ~0.1925 ~0.05 ~-1.45 ~0.1
execute if entity @s[scores={lifetime=282..321}] run tp @s ~-0.130874999999998 ~-0.0531432500000001 ~-0.150400000000002 ~2.9775 ~-0.265
execute if entity @s[scores={lifetime=322..361}] run tp @s ~-0.0635250000000013 ~0 ~0.0022500000000008 ~1.2675 ~-0.02
execute if entity @s[scores={lifetime=362..421}] run tp @s ~-0.36545 ~-0.0504116666666666 ~0.0175166666666674 ~-1.59 ~0.13
execute if entity @s[scores={lifetime=422..461}] run tp @s ~-0.10205 ~0.0116060000000001 ~0.0895749999999993 ~1.8025 ~0.0925
execute if entity @s[scores={lifetime=462..481}] run tp @s ~-0.385050000000001 ~-0.0371975000000006 ~-0.12525 ~-5.55 ~-0.0550000000000001
execute if entity @s[scores={lifetime=482..500}] run tp @s ~0.12715 ~0.0747530000000005 ~0.0569500000000005 ~-6.165 ~-1.065
execute if entity @s[scores={lifetime=501..513}] run tp @s ~0 ~-0.0166666666666669 ~0 ~0 ~0
execute if entity @s[scores={lifetime=514..533}] run tp @s ~0 ~0.0100000000000001 ~0 ~6.105 ~0.06
execute if entity @s[scores={lifetime=534..553}] run tp @s ~0 ~0 ~0 ~-4.865 ~-0.3
execute if entity @s[scores={lifetime=554..565}] run tp @s ~0 ~-0.0166666666666669 ~0 ~0 ~0
execute if entity @s[scores={lifetime=566..575}] run tp @s ~0 ~0.0200000000000003 ~0 ~0 ~-0.85
execute if entity @s[scores={lifetime=576..581}] run tp @s ~0 ~0 ~0 ~0 ~1.41666666666667
execute if entity @s[scores={lifetime=582..593}] run tp @s ~0 ~-0.0166666666666669 ~0 ~0 ~0
execute if entity @s[scores={lifetime=594..622}] run tp @s ~0.386233333333333 ~0.0687923333333335 ~0.683733333333331 ~-1.95 ~0.54
execute if entity @s[scores={lifetime=624..633}] run tp @s ~-0.221899999999994 ~-0.0128690000000006 ~-0.0530999999999949 ~2.46 ~-0.24
execute if entity @s[scores={lifetime=634..645}] run tp @s ~0 ~-0.0125000000000005 ~0 ~0 ~0.0083333333333333
execute if entity @s[scores={lifetime=646..655}] run tp @s ~0 ~0.0150000000000006 ~0 ~-2.51 ~0.65
execute if entity @s[scores={lifetime=656..665}] run tp @s ~0 ~0 ~0 ~6.2 ~0.37
execute if entity @s[scores={lifetime=666..675}] run tp @s ~0 ~0 ~0 ~-6.86 ~-0.37
execute if entity @s[scores={lifetime=676..715}] run tp @s ~0.225375 ~-0.0324999999999999 ~0.00412499999999909 ~2.14 ~-0.35
execute if entity @s[scores={lifetime=716..735}] run tp @s -572 ~0.0149999999999999 ~0.275600000000003 0 0

execute if entity @s[scores={lifetime=736..}] run summon minecraft:armor_stand -572 52 -599 {Tags:["Navi1"],NoGravity:1b,Small:0b,ShowArms:0b,Invisible:1b,Rotation:[180f],ArmorItems:[{},{},{},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Navi\"}",Id:[I;187647191,704335702,-1723810939,-35746885],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGEyNmUwN2UxZmYyZWRkNzJlNWUzMGJlYmRlZjExYjZhZTE0ODdiOWRhZGQzNzlhM2I1NjEwZWI3ZmU5ZWE4NSJ9fX0="}]}}}}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Body:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=736..}] run tag @a add MeetNavi
execute if entity @s[scores={lifetime=736..}] run gamemode adventure @a
execute if entity @s[scores={lifetime=736..}] run tp @a -572 51 -597 180 ~
execute if entity @s[scores={lifetime=736..}] run tag @a remove FlyNavi
execute if entity @s[scores={lifetime=736..}] run kill @s
