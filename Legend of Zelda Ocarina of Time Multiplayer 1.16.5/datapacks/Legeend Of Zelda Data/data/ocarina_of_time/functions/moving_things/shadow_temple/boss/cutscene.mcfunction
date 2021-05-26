#Cutscene Skip
execute if block 1651 15 960 minecraft:gold_block if entity @s[scores={ArrowCount=44}] run scoreboard players set @s ArrowCount 234

execute if entity @a[nbt={ActiveEffects:[{Id:25b}]}] run effect clear @a minecraft:levitation
execute if entity @s[scores={ArrowCount=20}] run fill 1650 53 964 1652 53 962 minecraft:barrier
#Cutscene 1
scoreboard players add @s ArrowCount 1

execute if entity @s[scores={ArrowCount=1}] run tag @a add NoNightVision
execute if entity @s[scores={ArrowCount=1..331}] at @a run tp @a 1651 ~ 963
execute if entity @s[scores={ArrowCount=45}] run tp @s[tag=BongoHand1] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=50}] run tp @s[tag=BongoHand1] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=50}] run scoreboard players set @a HoverJump 1
execute if entity @s[scores={ArrowCount=50}] at @a if entity @a[y=20.01,dy=0] run effect give @a minecraft:levitation 1 50 true
execute if entity @s[scores={ArrowCount=51}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ArrowCount=55}] run tp @s[tag=BongoHand1] ~ ~1 ~

execute if entity @s[scores={ArrowCount=65}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=70}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=71}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=75}] run tp @s[tag=BongoHand2] ~ ~1 ~

execute if entity @s[scores={ArrowCount=85}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=90}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=91}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=95}] run tp @s[tag=BongoHand2] ~ ~1 ~

execute if entity @s[scores={ArrowCount=105}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=110}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=111}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=115}] run tp @s[tag=BongoHand2] ~ ~1 ~


execute if entity @s[scores={ArrowCount=105}] run tp @s[tag=BongoHand1] ~ ~1.5 ~
execute if entity @s[scores={ArrowCount=129}] run tp @s[tag=BongoHand1] ~ ~-2.5 ~
execute if entity @s[scores={ArrowCount=129}] run scoreboard players set @a HoverJump 1
execute if entity @s[scores={ArrowCount=129}] at @a if entity @a[y=20.01,dy=0] run effect give @a minecraft:levitation 1 50 true
execute if entity @s[scores={ArrowCount=130}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ArrowCount=133}] run tp @s[tag=BongoHand1] ~ ~1 ~

execute if entity @s[scores={ArrowCount=142}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=146}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=147}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=150}] run tp @s[tag=BongoHand2] ~ ~1 ~

execute if entity @s[scores={ArrowCount=159}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=163}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=164}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=167}] run tp @s[tag=BongoHand2] ~ ~1 ~

execute if entity @s[scores={ArrowCount=176}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=180}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=181}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=184}] run tp @s[tag=BongoHand2] ~ ~1 ~


execute if entity @s[scores={ArrowCount=176}] run tp @s[tag=BongoHand1] ~ ~1.5 ~
execute if entity @s[scores={ArrowCount=195}] run tp @s[tag=BongoHand1] ~ ~-2.5 ~
execute if entity @s[scores={ArrowCount=196}] run scoreboard players set @a HoverJump 1
execute if entity @s[scores={ArrowCount=196}] at @a if entity @a[y=20.01,dy=0] run effect give @a minecraft:levitation 1 50 true
execute if entity @s[scores={ArrowCount=197}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ArrowCount=199}] run tp @s[tag=BongoHand1] ~ ~1 ~

execute if entity @s[scores={ArrowCount=207}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=210}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=211}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=213}] run tp @s[tag=BongoHand2] ~ ~1 ~

execute if entity @s[scores={ArrowCount=221}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=224}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=225}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=227}] run tp @s[tag=BongoHand2] ~ ~1 ~

execute if entity @s[scores={ArrowCount=235}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=238}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=239}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=241}] run tp @s[tag=BongoHand2] ~ ~1 ~


execute if entity @s[scores={ArrowCount=235}] run tp @s[tag=BongoHand1] ~ ~1.5 ~
execute if entity @s[scores={ArrowCount=250}] run tp @s[tag=BongoHand1] ~ ~-2.5 ~
execute if entity @s[scores={ArrowCount=251}] run scoreboard players set @a HoverJump 1
execute if entity @s[scores={ArrowCount=251}] at @a if entity @a[y=20.01,dy=0] run effect give @a minecraft:levitation 1 50 true
execute if entity @s[scores={ArrowCount=252}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ArrowCount=254}] run tp @s[tag=BongoHand1] ~ ~1 ~

execute if entity @s[scores={ArrowCount=260}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=262}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=263}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=265}] run tp @s[tag=BongoHand2] ~ ~1 ~

execute if entity @s[scores={ArrowCount=271}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=273}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=274}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=276}] run tp @s[tag=BongoHand2] ~ ~1 ~

execute if entity @s[scores={ArrowCount=282}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=284}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=285}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=287}] run tp @s[tag=BongoHand2] ~ ~1 ~


execute if entity @s[scores={ArrowCount=282}] run tp @s[tag=BongoHand1] ~ ~1.5 ~
execute if entity @s[scores={ArrowCount=294}] run tp @s[tag=BongoHand1] ~ ~-2.5 ~
execute if entity @s[scores={ArrowCount=295}] run scoreboard players set @a HoverJump 1
execute if entity @s[scores={ArrowCount=295}] at @a if entity @a[y=20.01,dy=0] run effect give @a minecraft:levitation 1 50 true
execute if entity @s[scores={ArrowCount=296}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ArrowCount=298}] run tp @s[tag=BongoHand1] ~ ~1 ~

execute if entity @s[scores={ArrowCount=304}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=305}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=306}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=308}] run tp @s[tag=BongoHand2] ~ ~1 ~

execute if entity @s[scores={ArrowCount=314}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=315}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=316}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=318}] run tp @s[tag=BongoHand2] ~ ~1 ~

execute if entity @s[scores={ArrowCount=324}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=325}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=326}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=328}] run tp @s[tag=BongoHand2] ~ ~1 ~


execute if entity @s[scores={ArrowCount=324}] run tp @s[tag=BongoHand1] ~ ~1.5 ~
execute if entity @s[scores={ArrowCount=334}] run tp @s[tag=BongoHand1] ~ ~-2.5 ~
execute if entity @s[scores={ArrowCount=335}] run scoreboard players set @a HoverJump 1
execute if entity @s[scores={ArrowCount=335}] at @a if entity @a[y=20.01,dy=0] run effect give @a minecraft:levitation 1 50 true
execute if entity @s[scores={ArrowCount=336}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ArrowCount=337}] run tp @s[tag=BongoHand1] ~ ~1 ~

execute if entity @s[scores={ArrowCount=342}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=343}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=344}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=345}] run tp @s[tag=BongoHand2] ~ ~1 ~

execute if entity @s[scores={ArrowCount=350}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=351}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=352}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=354}] run tp @s[tag=BongoHand2] ~ ~1 ~

execute if entity @s[scores={ArrowCount=358}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=359}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[scores={ArrowCount=360}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 1 .8
execute if entity @s[scores={ArrowCount=362}] run tp @s[tag=BongoHand2] ~ ~1 ~

execute if entity @s[scores={ArrowCount=358}] run tp @s[tag=BongoHand1] ~ ~1.5 ~

#Title
execute if entity @s[scores={ArrowCount=282}] run title @a times 5 50 5
execute if entity @s[scores={ArrowCount=282}] run title @a subtitle "Phantom Shadow Beast"
execute if entity @s[scores={ArrowCount=282}] run title @a title "Bongo Bongo"

#Eye and Body Appear
execute if entity @s[scores={ArrowCount=262..282}] at @e[type=armor_stand,tag=BongoEye] run particle minecraft:squid_ink ~ ~2 ~ 2.5 4 1 0 200 normal
execute if entity @s[scores={ArrowCount=282}] run data merge entity @e[type=armor_stand,tag=BongoEye,limit=1] {HandItems:[{id:cobblestone,Count:1b,tag:{CustomModelData:68}},{}]}
execute if entity @s[scores={ArrowCount=282}] run data merge entity @e[type=armor_stand,tag=BongoTail,limit=1] {HandItems:[{id:cobblestone,Count:1b,tag:{CustomModelData:72}},{}]}

#Disappear
execute if entity @s[scores={ArrowCount=343..363}] at @e[type=armor_stand,tag=BongoEye] run particle minecraft:squid_ink ~ ~2 ~ 2.5 4 1 0 200 normal
execute if entity @s[scores={ArrowCount=363}] run function ocarina_of_time:music/boss
execute if entity @s[scores={ArrowCount=363}] run data merge entity @e[type=armor_stand,tag=BongoEye,limit=1] {HandItems:[{},{}]}
execute if entity @s[scores={ArrowCount=363}] run data merge entity @e[type=armor_stand,tag=BongoTail,limit=1] {HandItems:[{},{}]}

#Finish
execute if entity @s[scores={ArrowCount=364..}] as @e[type=ravager,tag=HandHealth] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={ArrowCount=364..}] run fill 1651 15 960 1651 15 960 minecraft:gold_block
execute if entity @s[scores={ArrowCount=364..}] run tag @e[type=armor_stand,tag=BongoEye] add Attack
execute if entity @s[scores={ArrowCount=364..}] run tag @e[type=armor_stand,tag=BongoHand] add Attack
execute if entity @s[scores={ArrowCount=364..}] run fill 1652 15 962 1652 15 962 minecraft:gold_block
execute if entity @s[scores={ArrowCount=364..}] run scoreboard players set @s ArrowCount 0
