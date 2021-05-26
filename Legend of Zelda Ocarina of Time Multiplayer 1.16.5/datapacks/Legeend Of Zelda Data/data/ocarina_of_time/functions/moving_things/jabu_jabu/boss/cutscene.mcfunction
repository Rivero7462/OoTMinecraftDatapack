scoreboard players add @s ArrowCount 1

#Summon Jelly
execute if entity @s[scores={ArrowCount=1}] run summon minecraft:armor_stand ^ ^8 ^7 {Tags:["BariJelly","Barinade","Lower"],ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],NoGravity:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={ArrowCount=1}] run summon minecraft:armor_stand ^ ^8 ^-7 {Tags:["BariJelly","Barinade","Lower"],ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],NoGravity:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={ArrowCount=1}] run summon minecraft:armor_stand ^7 ^8 ^ {Tags:["BariJelly","Barinade","Lower"],ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],NoGravity:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={ArrowCount=1}] run summon minecraft:armor_stand ^-7 ^8 ^ {Tags:["BariJelly","Barinade","Lower"],ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],NoGravity:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={ArrowCount=1}] run summon minecraft:armor_stand ^4 ^8 ^4 {Tags:["BariJelly","Barinade"],ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],NoGravity:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={ArrowCount=1}] run summon minecraft:armor_stand ^4 ^8 ^-4 {Tags:["BariJelly","Barinade"],ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],NoGravity:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={ArrowCount=1}] run summon minecraft:armor_stand ^-4 ^8 ^4 {Tags:["BariJelly","Barinade"],ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],NoGravity:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={ArrowCount=1}] run summon minecraft:armor_stand ^-4 ^8 ^-4 {Tags:["BariJelly","Barinade"],ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],NoGravity:1b,Invisible:1b,DisabledSlots:4144959}

#Title
execute if entity @s[scores={ArrowCount=95}] run title @a times 5 50 5
execute if entity @s[scores={ArrowCount=95}] run title @a subtitle "Bio-electric Anemone"
execute if entity @s[scores={ArrowCount=95}] run title @a title "Barinade"

execute if entity @s[scores={ArrowCount=1..19}] as @e[type=armor_stand,tag=BariJelly] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=BarinadeControl,limit=1]

execute if entity @s[scores={ArrowCount=20..100}] as @e[type=armor_stand,tag=BariJelly,tag=Lower] at @s run tp @s ~ ~-.1 ~
execute if entity @s[scores={ArrowCount=20..100}] as @e[type=armor_stand,tag=BariJelly,tag=!Lower] at @s run tp @s ~ ~-.08 ~

execute if entity @s[scores={ArrowCount=145..155}] as @e[type=armor_stand,tag=BariJelly] at @s run data merge entity @s {Pose:{Head:[-90f,0f,0f]}}
execute if entity @s[scores={ArrowCount=140..155}] as @e[type=armor_stand,tag=BariJelly] at @s run tp @s ^ ^ ^.3 facing entity @e[type=armor_stand,tag=BarinadeControl,limit=1]

execute if entity @s[scores={ArrowCount=156..}] run function ocarina_of_time:music/boss
execute if entity @s[scores={ArrowCount=156..}] run data merge entity @s {ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:5}}]}
execute if entity @s[scores={ArrowCount=156..}] run kill @e[type=armor_stand,tag=BariJelly]
execute if entity @s[scores={ArrowCount=156..}] run tag @s add Attack
execute if entity @s[scores={ArrowCount=156..}] run tag @s add Lazer
execute if entity @s[scores={ArrowCount=156..}] run fill 1669 53 1332 1667 53 1334 minecraft:air
execute if entity @s[scores={ArrowCount=156..}] run scoreboard players set @s ArrowCount 0

#Particles
execute unless entity @s[scores={ArrowCount=120..}] as @e[type=armor_stand,tag=BariJelly] at @s run particle minecraft:crit ~ ~1 ~ .2 .2 .2 .1 1 normal

execute if entity @s[scores={ArrowCount=120..}] as @e[type=armor_stand,tag=BariJelly] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=BarinadeControl,limit=1]
execute if entity @s[scores={ArrowCount=120..}] as @e[type=armor_stand,tag=BariJelly] at @s anchored eyes positioned ^ ^ ^ anchored feet run function ocarina_of_time:moving_things/jabu_jabu/boss/particle

#Sounds
execute if entity @s[scores={ArrowCount=1}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .1 1.5
execute if entity @s[scores={ArrowCount=3}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .1 1.5
execute if entity @s[scores={ArrowCount=8}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .1 1.5
execute if entity @s[scores={ArrowCount=10}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .2 1.5
execute if entity @s[scores={ArrowCount=14}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .2 1.5
execute if entity @s[scores={ArrowCount=16}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .2 1.5
execute if entity @s[scores={ArrowCount=20}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .3 1.5
execute if entity @s[scores={ArrowCount=22}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .3 1.5
execute if entity @s[scores={ArrowCount=25}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .3 1.5
execute if entity @s[scores={ArrowCount=28}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .4 1.5
execute if entity @s[scores={ArrowCount=30}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .4 1.5
execute if entity @s[scores={ArrowCount=32}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .4 1.5
execute if entity @s[scores={ArrowCount=34}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=36}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=40}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=43}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=46}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=48}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=50}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=53}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=55}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=57}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=60}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=62}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=66}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=68}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=70}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=71}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=74}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=78}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=80}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=84}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=87}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=90}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=93}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=96}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=98}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=100}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=105}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=107}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=110}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=113}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=117}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=120}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=126}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=128}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=130}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=132}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=135}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=140}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=144}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={ArrowCount=155}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .5 .5
