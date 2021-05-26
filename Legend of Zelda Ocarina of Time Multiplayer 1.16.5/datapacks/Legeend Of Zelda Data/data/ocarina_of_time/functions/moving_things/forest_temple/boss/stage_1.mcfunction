execute unless entity @s[team=Horses] run team join Horses @s

#Cutscene
execute unless block 904 24 -1206 minecraft:gold_block run scoreboard players add @s ArrowCount 1
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=1}] run stopsound @a music
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=7}] run tp @e[type=horse,tag=PhantomHorse] 898 27 -1205 -60 ~
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=7}] run data merge entity @e[type=zombie,tag=PhantomGanon,limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:4996914}}},{id:"leather_leggings",Count:1b,tag:{display:{color:3289650}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:1644825}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Ganon\""},SkullOwner:{Id:[I;-1764319713,-350861171,-1842722124,110201393],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjdmMjk0YTU1OTQzYWZmMGE4M2RiNjM0YTJhMzUwYTk0OWY4NjNhM2YyYTg3OGI5Y2ViMTk3ZDYxYjQ2MjIifX19"}]}}}}]}
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=1..25}] run tp @a 903 27 -1203 -40 15
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=15}] at @a run playsound minecraft:entity.horse.ambient hostile @a ~ ~ ~ 1 .8
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=26}] run tp @a 903 27 -1203 110 -5
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=27..161}] run tp @a 903 27 -1203
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=40}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 .5
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=65}] run data merge entity @e[type=zombie,tag=PhantomGanon,limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:4996914}}},{id:"leather_leggings",Count:1b,tag:{display:{color:3289650}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:1644825}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Ganon\""},SkullOwner:{Id:[I;1626903851,-1610135650,-1624482959,1407199076],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTA0MDU4ZDQ1NGU1OGMzMGNhZDU5NzIxZDNkOWRjODI5OWQ5OTNkMGNkYjE4N2RkYmJmNDQyZmE3NGQyYjQ2MSJ9fX0="}]}}}}]}
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=100..120}] run tp @e[type=horse,tag=PhantomHorse] ~ ~.1 ~ -65 ~
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=125..165}] run tp @e[type=horse,tag=PhantomHorse] ~.25 ~ ~.15
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=140..165}] run particle minecraft:witch 906 30.5 -1200 0.1 .2 0.1 2 1 normal @a
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=161}] run function ocarina_of_time:music/boss
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=165}] run summon minecraft:armor_stand 906.7 28 -1200 {Tags:["BackPainting","Boss"],Rotation:[110f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=166}] run tp @e[type=horse,tag=PhantomHorse] 910 22 -1198
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=271}] run fill 904 24 -1206 904 24 -1206 minecraft:gold_block

#Title
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=70}] run title @a times 5 50 5
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=70}] run title @a subtitle "Evil Spirit from Beyond"
execute unless block 904 24 -1206 minecraft:gold_block if entity @s[scores={ArrowCount=70}] run title @a title "Phantom Ganon"


#Ganon Positions
execute unless entity @s[scores={ArrowCount=0..5}] as @e[type=zombie,tag=PhantomGanon] at @e[type=horse,tag=PhantomHorse] rotated as @e[type=horse,tag=PhantomHorse] run tp @s ~ ~.8 ~ ~ 0

#Painting Choice Randomizer
execute unless entity @e[type=armor_stand,tag=RealPainting] run scoreboard players add @s timer 1
execute unless entity @e[type=armor_stand,tag=FakePainting] run scoreboard players add @s lifetime 1
execute if entity @s[scores={timer=7..}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=7..}] run scoreboard players set @s lifetime 0
execute unless entity @s[scores={ArrowCount=1..270}] unless entity @e[type=armor_stand,tag=RealPainting] unless entity @e[type=armor_stand,tag=FakePainting] unless entity @e[type=armor_stand,tag=BackPainting] run tag @s add Attack

#Summon Real and Fake
#1
execute positioned 906.7 30 -1200 if entity @s[tag=Attack,scores={timer=1}] unless entity @e[type=armor_stand,tag=RealPainting] run summon minecraft:armor_stand ~ ~ ~ {Tags:["RealPainting","Boss"],Rotation:[110f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:22}}],Invisible:1b,NoGravity:1b}
execute positioned 906.7 30 -1200 unless entity @e[type=armor_stand,tag=RealPainting,distance=..1] if entity @s[tag=Attack,scores={lifetime=1}] unless entity @s[scores={timer=1}] unless entity @e[type=armor_stand,tag=FakePainting] run summon minecraft:armor_stand ~ ~ ~ {Tags:["FakePainting","Boss"],Rotation:[110f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:23}}],Invisible:1b,NoGravity:1b}
#2
execute positioned 906.7 30 -1210 if entity @s[tag=Attack,scores={timer=2}] unless entity @e[type=armor_stand,tag=RealPainting] run summon minecraft:armor_stand ~ ~ ~ {Tags:["RealPainting","Boss"],Rotation:[70f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:22}}],Invisible:1b,NoGravity:1b}
execute positioned 906.7 30 -1210 unless entity @e[type=armor_stand,tag=RealPainting,distance=..1] if entity @s[tag=Attack,scores={lifetime=2}] unless entity @s[scores={timer=2}] unless entity @e[type=armor_stand,tag=FakePainting] run summon minecraft:armor_stand ~ ~ ~ {Tags:["FakePainting","Boss"],Rotation:[70f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:23}}],Invisible:1b,NoGravity:1b}
#3
execute positioned 898 30 -1214.6 if entity @s[tag=Attack,scores={timer=3}] unless entity @e[type=armor_stand,tag=RealPainting] run summon minecraft:armor_stand ~ ~ ~ {Tags:["RealPainting","Boss"],Rotation:[0f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:22}}],Invisible:1b,NoGravity:1b}
execute positioned 898 30 -1214.6 unless entity @e[type=armor_stand,tag=RealPainting,distance=..1] if entity @s[tag=Attack,scores={lifetime=3}] unless entity @s[scores={timer=3}] unless entity @e[type=armor_stand,tag=FakePainting] run summon minecraft:armor_stand ~ ~ ~ {Tags:["FakePainting","Boss"],Rotation:[0f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:23}}],Invisible:1b,NoGravity:1b}
#4
execute positioned 890.3 30 -1210 if entity @s[tag=Attack,scores={timer=4}] unless entity @e[type=armor_stand,tag=RealPainting] run summon minecraft:armor_stand ~ ~ ~ {Tags:["RealPainting","Boss"],Rotation:[-70f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:22}}],Invisible:1b,NoGravity:1b}
execute positioned 890.3 30 -1210 unless entity @e[type=armor_stand,tag=RealPainting,distance=..1] if entity @s[tag=Attack,scores={lifetime=4}] unless entity @s[scores={timer=4}] unless entity @e[type=armor_stand,tag=FakePainting] run summon minecraft:armor_stand ~ ~ ~ {Tags:["FakePainting","Boss"],Rotation:[-70f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:23}}],Invisible:1b,NoGravity:1b}
#5
execute positioned 890.3 30 -1200 if entity @s[tag=Attack,scores={timer=5}] unless entity @e[type=armor_stand,tag=RealPainting] run summon minecraft:armor_stand ~ ~ ~ {Tags:["RealPainting","Boss"],Rotation:[-110f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:22}}],Invisible:1b,NoGravity:1b}
execute positioned 890.3 30 -1200 unless entity @e[type=armor_stand,tag=RealPainting,distance=..1] if entity @s[tag=Attack,scores={lifetime=5}] unless entity @s[scores={timer=5}] unless entity @e[type=armor_stand,tag=FakePainting] run summon minecraft:armor_stand ~ ~ ~ {Tags:["FakePainting","Boss"],Rotation:[-110f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:23}}],Invisible:1b,NoGravity:1b}
#6
execute positioned 898 30 -1194.4 if entity @s[tag=Attack,scores={timer=6}] unless entity @e[type=armor_stand,tag=RealPainting] run summon minecraft:armor_stand ~ ~ ~ {Tags:["RealPainting","Boss"],Rotation:[180f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:22}}],Invisible:1b,NoGravity:1b}
execute positioned 898 30 -1194.4 unless entity @e[type=armor_stand,tag=RealPainting,distance=..1] if entity @s[tag=Attack,scores={lifetime=6}] unless entity @s[scores={timer=6}] unless entity @e[type=armor_stand,tag=FakePainting] run summon minecraft:armor_stand ~ ~ ~ {Tags:["FakePainting","Boss"],Rotation:[180f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:23}}],Invisible:1b,NoGravity:1b}
#End
execute if entity @e[type=armor_stand,tag=RealPainting] if entity @e[type=armor_stand,tag=FakePainting] run tag @s remove Attack

#Option 1
execute if entity @s[tag=Option1] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=Option1,scores={GameTimer=1..20}] run particle minecraft:witch 906 30.5 -1200 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Option1,scores={GameTimer=21..94}] run tp @s ~-0.25 ~ ~-0.15 120 ~
execute if entity @s[tag=Option1,scores={GameTimer=74..94}] run particle minecraft:witch 890 30.5 -1210 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Option1,scores={GameTimer=95}] run tp @s 886 22 -1212
execute if entity @s[tag=Option1,scores={GameTimer=95}] run summon minecraft:armor_stand 890.3 28 -1210 {Tags:["BackPainting","Boss"],Rotation:[-70f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
#Option 2
execute if entity @s[tag=Option2] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=Option2,scores={GameTimer=1..20}] run particle minecraft:witch 906 30.5 -1210 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Option2,scores={GameTimer=21..94}] run tp @s ~-0.25 ~ ~0.15 60 ~
execute if entity @s[tag=Option2,scores={GameTimer=74..94}] run particle minecraft:witch 890 30.5 -1200 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Option2,scores={GameTimer=95}] run tp @s 886 22 -1198
execute if entity @s[tag=Option2,scores={GameTimer=95}] run summon minecraft:armor_stand 890.3 28 -1200 {Tags:["BackPainting","Boss"],Rotation:[-110f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
#Option 3
execute if entity @s[tag=Option3] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=Option3,scores={GameTimer=1..20}] run particle minecraft:witch 898 30.5 -1215 0.3 0.4 0.1 2 1 normal @a
execute if entity @s[tag=Option3,scores={GameTimer=21..94}] run tp @s ~ ~ ~.3 0 ~
execute if entity @s[tag=Option3,scores={GameTimer=74..94}] run particle minecraft:witch 898 30.5 -1195 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Option3,scores={GameTimer=95}] run tp @s 898 19 -1192
execute if entity @s[tag=Option3,scores={GameTimer=95}] run summon minecraft:armor_stand 898 28 -1194.4 {Tags:["BackPainting","Boss"],Rotation:[180f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
#Option 4
execute if entity @s[tag=Option4] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=Option4,scores={GameTimer=1..20}] run particle minecraft:witch 890 30.5 -1210 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Option4,scores={GameTimer=21..94}] run tp @s ~0.25 ~ ~0.15 -60 ~
execute if entity @s[tag=Option4,scores={GameTimer=74..94}] run particle minecraft:witch 906 30.5 -1200 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Option4,scores={GameTimer=95}] run tp @s 910 22 -1198
execute if entity @s[tag=Option4,scores={GameTimer=95}] run summon minecraft:armor_stand 906.7 28 -1200 {Tags:["BackPainting","Boss"],Rotation:[110f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
#Option 5
execute if entity @s[tag=Option5] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=Option5,scores={GameTimer=1..20}] run particle minecraft:witch 890 30.5 -1200 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Option5,scores={GameTimer=21..94}] run tp @s ~0.25 ~ ~-0.15 -120 ~
execute if entity @s[tag=Option5,scores={GameTimer=74..94}] run particle minecraft:witch 906 30.5 -1210 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Option5,scores={GameTimer=95}] run tp @s 910 22 -1212
execute if entity @s[tag=Option5,scores={GameTimer=95}] run summon minecraft:armor_stand 906.7 28 -1210 {Tags:["BackPainting","Boss"],Rotation:[70f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
#Option 6
execute if entity @s[tag=Option6] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=Option6,scores={GameTimer=1..20}] run particle minecraft:witch 898 30.5 -1195 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Option6,scores={GameTimer=21..94}] run tp @s ~ ~ ~-.3 180 ~
execute if entity @s[tag=Option6,scores={GameTimer=74..94}] run particle minecraft:witch 898 30.5 -1215 0.3 0.4 0.1 2 1 normal @a
execute if entity @s[tag=Option6,scores={GameTimer=95}] run tp @s 898 22 -1219
execute if entity @s[tag=Option6,scores={GameTimer=95}] run summon minecraft:armor_stand 898 28 -1214.6 {Tags:["BackPainting","Boss"],Rotation:[0f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}

execute if entity @s[scores={GameTimer=99}] run tag @s remove Option1
execute if entity @s[scores={GameTimer=99}] run tag @s remove Option2
execute if entity @s[scores={GameTimer=99}] run tag @s remove Option3
execute if entity @s[scores={GameTimer=99}] run tag @s remove Option4
execute if entity @s[scores={GameTimer=99}] run tag @s remove Option5
execute if entity @s[scores={GameTimer=99}] run tag @s remove Option6
execute if entity @s[scores={GameTimer=99}] run tag @s remove Retreat
execute if entity @s[scores={GameTimer=99}] run tp @s 898 22 -1205
execute if entity @s[scores={GameTimer=99..109}] run scoreboard players set @s GameTimer 0

#Lightning
fill 898 27 -1205 898 27 -1205 minecraft:air replace minecraft:fire
execute if entity @s[scores={GameTimer=58}] run summon minecraft:lightning_bolt 898 15 -1205
execute if entity @s[scores={GameTimer=58}] run particle minecraft:crit 898 27 -1205 2 0.5 2 1 80 normal
execute if entity @s[scores={GameTimer=58}] positioned 898 27 -1205 if entity @a[distance=..6.3] run function ocarina_of_time:moving_things/forest_temple/boss/lightning
execute if entity @s[scores={GameTimer=59}] positioned 898 27 -1205 if entity @a[distance=..6.3] run effect clear @a minecraft:resistance

#Damage
execute if entity @s[scores={GameTimer=21..56}] if entity @a[nbt={SelectedItem:{tag:{ArrowBow:1b}}}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={GameTimer=1..56}] if entity @a[nbt={SelectedItem:{tag:{ArrowBow:1b}}}] run data merge entity @e[type=zombie,tag=PhantomGanon,limit=1] {Invulnerable:0b}
execute if entity @s[scores={GameTimer=57}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={GameTimer=57}] run data merge entity @e[type=zombie,tag=PhantomGanon,limit=1] {Invulnerable:1b}
execute if entity @s[nbt={HurtTime:10s}] run tag @s add Retreat
execute if entity @e[type=zombie,tag=PhantomGanon,nbt={HurtTime:10s}] run tag @s add Retreat
execute if entity @s[tag=Retreat] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=Retreat] run data merge entity @e[type=zombie,tag=PhantomGanon,limit=1] {Invulnerable:1b}

#Retreat
execute if entity @s[tag=Retreat] unless entity @s[scores={GameTimer=200..}] unless entity @s[scores={GameTimer=96..109}] run scoreboard players set @s GameTimer 200
#Option 1
execute if entity @s[tag=Retreat,tag=Option1] run tp @s ~0.25 ~ ~0.15 120 ~
execute if entity @s[tag=Retreat,tag=Option1] positioned ~ ~1 ~ if entity @e[type=armor_stand,tag=PhantomPainting,distance=..3] run particle minecraft:witch 906 30.5 -1200 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Retreat,tag=Option1] positioned ~-2.5 ~1 ~-2 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run summon minecraft:armor_stand 906.7 28 -1200 {Tags:["BackPainting","Boss"],Rotation:[110f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
execute if entity @s[tag=Retreat,tag=Option1] positioned ~-2.5 ~1 ~-2 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run tp @s 910 22 -1198
execute if entity @s[tag=Retreat,tag=Option1] positioned ~-2.5 ~1 ~-2 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run scoreboard players set @s GameTimer 96
#Option 2
execute if entity @s[tag=Retreat,tag=Option2] run tp @s ~0.25 ~ ~-0.15 60 ~
execute if entity @s[tag=Retreat,tag=Option2] positioned ~ ~1 ~ if entity @e[type=armor_stand,tag=PhantomPainting,distance=..3] run particle minecraft:witch 906 30.5 -1210 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Retreat,tag=Option2] positioned ~-2.5 ~1 ~2 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run summon minecraft:armor_stand 906.7 28 -1210 {Tags:["BackPainting","Boss"],Rotation:[70f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
execute if entity @s[tag=Retreat,tag=Option2] positioned ~-2.5 ~1 ~2 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run tp @s 910 22 -1212
execute if entity @s[tag=Retreat,tag=Option2] positioned ~-2.5 ~1 ~2 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run scoreboard players set @s GameTimer 96
#Option 3
execute if entity @s[tag=Retreat,tag=Option3] run tp @s ~ ~ ~-.3 0 ~
execute if entity @s[tag=Retreat,tag=Option3] positioned ~ ~1 ~ if entity @e[type=armor_stand,tag=PhantomPainting,distance=..3] run particle minecraft:witch 898 30.5 -1215 0.3 0.4 0.1 2 1 normal @a
execute if entity @s[tag=Retreat,tag=Option3] positioned ~ ~1 ~3 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run summon minecraft:armor_stand 898 28 -1214.6 {Tags:["BackPainting","Boss"],Rotation:[0f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
execute if entity @s[tag=Retreat,tag=Option3] positioned ~ ~1 ~3 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run tp @s 898 22 -1219
execute if entity @s[tag=Retreat,tag=Option3] positioned ~ ~1 ~3 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run scoreboard players set @s GameTimer 96
#Option 4
execute if entity @s[tag=Retreat,tag=Option4] run tp @s ~-0.25 ~ ~-0.15 -60 ~
execute if entity @s[tag=Retreat,tag=Option4] positioned ~ ~1 ~ if entity @e[type=armor_stand,tag=PhantomPainting,distance=..3] run particle minecraft:witch 890 30.5 -1210 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Retreat,tag=Option4] positioned ~2.5 ~1 ~2 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run summon minecraft:armor_stand 890.3 28 -1210 {Tags:["BackPainting","Boss"],Rotation:[-70f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
execute if entity @s[tag=Retreat,tag=Option4] positioned ~2.5 ~1 ~2 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run tp @s 886 22 -1212
execute if entity @s[tag=Retreat,tag=Option4] positioned ~2.5 ~1 ~2 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run scoreboard players set @s GameTimer 96
#Option 5
execute if entity @s[tag=Retreat,tag=Option5] run tp @s ~-0.25 ~ ~0.15 -120 ~
execute if entity @s[tag=Retreat,tag=Option5] positioned ~ ~1 ~ if entity @e[type=armor_stand,tag=PhantomPainting,distance=..3] run particle minecraft:witch 890 30.5 -1200 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Retreat,tag=Option5] positioned ~2.5 ~1 ~-2 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run summon minecraft:armor_stand 890.3 28 -1200 {Tags:["BackPainting","Boss"],Rotation:[-110f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
execute if entity @s[tag=Retreat,tag=Option5] positioned ~2.5 ~1 ~-2 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run tp @s 886 22 -1198
execute if entity @s[tag=Retreat,tag=Option5] positioned ~2.5 ~1 ~-2 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run scoreboard players set @s GameTimer 96
#Option 6
execute if entity @s[tag=Retreat,tag=Option6] run tp @s ~ ~ ~.3 180 ~
execute if entity @s[tag=Retreat,tag=Option6] positioned ~ ~1 ~ if entity @e[type=armor_stand,tag=PhantomPainting,distance=..3] run particle minecraft:witch 898 30.5 -1195 0.1 0.4 0.3 2 1 normal @a
execute if entity @s[tag=Retreat,tag=Option6] positioned ~ ~1 ~-3 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run summon minecraft:armor_stand 898 28 -1194.4 {Tags:["BackPainting","Boss"],Rotation:[180f],ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:24}}],Invisible:1b,NoGravity:1b}
execute if entity @s[tag=Retreat,tag=Option6] positioned ~ ~1 ~-3 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run tp @s 898 19 -1192
execute if entity @s[tag=Retreat,tag=Option6] positioned ~ ~1 ~-3 if entity @e[type=armor_stand,tag=PhantomPainting,distance=..1] run scoreboard players set @s GameTimer 96

#Life
execute if entity @s[scores={GameTimer=201}] run scoreboard players add @s time 1
execute if entity @s[scores={time=3..}] run tag @e[type=zombie,tag=PhantomGanon] add Stage2

#Sounds
execute if entity @s[scores={GameTimer=1}] run playsound minecraft:entity.horse.ambient hostile @a ~ ~ ~ 2 .7
execute if entity @s[scores={GameTimer=55}] run playsound minecraft:entity.villager.hurt hostile @a ~ ~ ~ 2 .5
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.villager.death hostile @a ~ ~ ~ 2 .5
execute if entity @e[type=zombie,tag=PhantomGanon,nbt={HurtTime:10s}] run playsound minecraft:entity.villager.death hostile @a ~ ~ ~ 2 .5
