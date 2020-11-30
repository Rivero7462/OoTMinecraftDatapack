scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=1}] as @e[type=armor_stand,tag=BongoHand1] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:67}}]}
execute if entity @s[scores={lifetime=1}] as @e[type=armor_stand,tag=BongoHand2] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:66}}]}
execute if entity @s[scores={lifetime=1}] as @e[type=armor_stand,tag=BongoHand] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=1}] run tag @s add Death
execute if entity @s[scores={lifetime=1}] run stopsound @a hostile
execute if entity @s[scores={lifetime=1}] run function ocarina_of_time:music/shadow_temple
execute if entity @s[scores={lifetime=1}] run effect clear @a minecraft:levitation
execute if entity @s[scores={lifetime=1}] run tag @e[type=armor_stand,tag=BongoHand] remove Attack
execute if entity @s[scores={lifetime=1}] run data merge entity @e[type=armor_stand,tag=BongoTail,limit=1] {HandItems:[{id:cobblestone,Count:1b,tag:{CustomModelData:72}},{}]}
execute if entity @s[scores={lifetime=1}] run data merge entity @s {HandItems:[{id:cobblestone,Count:1b,tag:{CustomModelData:71}},{}]}
execute if entity @s[scores={lifetime=1}] run fill 1651 22 970 1651 22 970 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill 1650 22 971 1650 22 971 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill 1651 22 972 1651 22 972 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill 1652 22 971 1652 22 971 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run tp @a 1651 21 971 180 0

execute if entity @s[scores={lifetime=1}] run tp @e[type=armor_stand,tag=BongoHand1] 1646 24 967 0 ~
execute if entity @s[scores={lifetime=1}] run tp @e[type=armor_stand,tag=BongoHand2] 1656 24 967 0 ~
execute if entity @s[scores={lifetime=1}] run tp @s 1651 27 959 0 ~

execute if entity @s[scores={lifetime=9}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=21}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=33}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=45}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=58}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=74}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=94}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=15}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=27}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=39}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=51}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=65}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=83}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=105}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1

execute if entity @s[scores={lifetime=3..8}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~-.6 ~
execute if entity @s[scores={lifetime=9..14}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~.6 ~
execute if entity @s[scores={lifetime=15..20}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~-.6 ~
execute if entity @s[scores={lifetime=21..26}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~.6 ~
execute if entity @s[scores={lifetime=27..32}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~-.6 ~
execute if entity @s[scores={lifetime=33..38}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~.6 ~
execute if entity @s[scores={lifetime=39..44}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~-.6 ~
execute if entity @s[scores={lifetime=45..50}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~.6 ~
execute if entity @s[scores={lifetime=51..57}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~-.45 ~
execute if entity @s[scores={lifetime=58..64}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~.45 ~
execute if entity @s[scores={lifetime=65..73}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~-.4 ~
execute if entity @s[scores={lifetime=74..82}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~.3 ~
execute if entity @s[scores={lifetime=83..93}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~-.25 ~
execute if entity @s[scores={lifetime=94..104}] as @e[type=armor_stand,tag=BongoHand1] at @s run tp @s ~ ~.25 ~
execute if entity @s[scores={lifetime=9..14}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~-.6 ~
execute if entity @s[scores={lifetime=15..20}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~.6 ~
execute if entity @s[scores={lifetime=21..26}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~-.6 ~
execute if entity @s[scores={lifetime=27..32}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~.6 ~
execute if entity @s[scores={lifetime=33..38}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~-.6 ~
execute if entity @s[scores={lifetime=39..44}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~.6 ~
execute if entity @s[scores={lifetime=45..50}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~-.6 ~
execute if entity @s[scores={lifetime=51..57}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~.45 ~
execute if entity @s[scores={lifetime=58..64}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~-.45 ~
execute if entity @s[scores={lifetime=65..73}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~.3 ~
execute if entity @s[scores={lifetime=74..82}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~-.3 ~
execute if entity @s[scores={lifetime=83..93}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~.25 ~
execute if entity @s[scores={lifetime=94..104}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~-.2 ~
execute if entity @s[scores={lifetime=105..112}] as @e[type=armor_stand,tag=BongoHand2] at @s run tp @s ~ ~.25 ~
execute if entity @s[scores={lifetime=130..170}] as @e[type=armor_stand,tag=BongoHand] at @s run tp @s ~ ~-.2 ~
execute if entity @s[scores={lifetime=130..170}] run tp @s ~ ~-.8 ~
execute if entity @s[scores={lifetime=140}] run playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={lifetime=140..170}] run particle minecraft:squid_ink 1651 21.5 963 6 .1 6 0 50 normal
execute if entity @s[scores={lifetime=160}] run fill 1663 20 975 1639 20 951 minecraft:black_wool replace minecraft:smooth_sandstone
execute if entity @s[scores={lifetime=160}] run fill 1663 20 975 1639 20 951 minecraft:black_wool replace minecraft:barrier
execute if entity @s[scores={lifetime=160}] run kill @e[type=falling_block,tag=BongoLight]

execute if entity @s[scores={lifetime=200}] run clone 1654 14 962 1654 14 962 1653 21 967
execute if entity @s[scores={lifetime=200}] run fill 1653 15 962 1653 15 962 minecraft:gold_block
execute if entity @s[scores={lifetime=200}] run tag @a remove NoNightVision
execute if entity @s[scores={lifetime=200}] run tag @a add ShadowMedallion
execute if entity @s[scores={lifetime=200}] run fill 1663 20 975 1639 20 951 minecraft:smooth_sandstone replace minecraft:black_wool
execute if entity @s[scores={lifetime=200}] run fill 1651 20 958 1649 20 958 minecraft:light_blue_concrete
execute if entity @s[scores={lifetime=200}] run fill 1650 20 957 1650 20 959 minecraft:light_blue_concrete
execute if entity @s[scores={lifetime=200}] run kill @e[tag=BongoBongo]
execute if entity @s[scores={lifetime=200}] run fill 1650 22 972 1652 22 970 minecraft:air
execute if entity @s[scores={lifetime=200}] run tag @a remove Boss
