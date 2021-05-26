scoreboard objectives add Score dummy
execute unless entity @a[nbt={SelectedItem:{tag:{ArrowBow:1b}}}] run scoreboard objectives setdisplay sidebar Score
execute unless entity @a[nbt={SelectedItem:{tag:{ArrowBow:1b}}}] run tag @a add HideDisplayScore
scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=1}] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={lifetime=1}] run team join Horses @s
execute if entity @s[scores={lifetime=1}] run team join Horses @a
execute if entity @s[scores={lifetime=1}] run scoreboard players set @a MinigameSeeds 20
execute if entity @s[scores={lifetime=1}] run function ocarina_of_time:music/horse_race
execute if entity @s[scores={lifetime=1..85}] run tp @s -5 101 1890.0 90 ~

execute if entity @s[scores={lifetime=1..85}] run tp @a ~ ~1 ~

execute if entity @s[scores={lifetime=1..703}] run fill ^-.5 ^ ^-1 ^.5 ^ ^1 minecraft:barrier replace minecraft:air
execute if entity @s[scores={lifetime=1..704}] unless entity @s[scores={lifetime=415..461}] run fill ^-5 ^ ^-2 ^5 ^1 ^-7 minecraft:air replace minecraft:barrier
execute if entity @s[scores={lifetime=705}] run fill ^-5 ^ ^2 ^5 ^1 ^-7 minecraft:air replace minecraft:barrier

#Track
execute if entity @s[scores={lifetime=86..350}] run tp @s ~-.5 ~ ~ 90 0
execute if entity @s[scores={lifetime=86..350}] run tp @a ~.7 ~1 ~

execute if entity @s[scores={lifetime=351..370}] run tp @s ^ ^ ^.5 100 0
execute if entity @s[scores={lifetime=351..370}] run tp @a ^ ^1 ^-.7

execute if entity @s[scores={lifetime=371..380}] run tp @s ^ ^ ^.5 35 0
execute if entity @s[scores={lifetime=371..380}] run tp @a ^ ^1 ^-.7

execute if entity @s[scores={lifetime=381..395}] run tp @s ^ ^ ^.5 0 0
execute if entity @s[scores={lifetime=381..395}] run tp @a ^ ^1 ^-.7

execute if entity @s[scores={lifetime=396..405}] run tp @s ^ ^ ^.5 -45 0
execute if entity @s[scores={lifetime=396..405}] run tp @a ^ ^1 ^-.7

execute if entity @s[scores={lifetime=406..414}] run tp @s ^ ^ ^.5 -90 0
execute if entity @s[scores={lifetime=406..414}] run tp @a ^ ^1 ^-.7

execute if entity @s[scores={lifetime=415..461}] run tp @s ^ ^ ^.5 -125 0
execute if entity @s[scores={lifetime=415..461}] run tp @a ^ ^1 ^-.7

execute if entity @s[scores={lifetime=462}] run fill -117 101 1888 -157 101 1904 minecraft:air replace minecraft:barrier
execute if entity @s[scores={lifetime=462..705}] run tp @s ^ ^ ^.5 -90 0
execute if entity @s[scores={lifetime=462..705}] run tp @a ^ ^1 ^-.7

#Pots
execute if entity @s[scores={lifetime=1}] run summon minecraft:zombie -61.0 102 1876.0 {Tags:["GerudoPot","Invisible","Resist"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:73}}],ArmorDropChances:[0f,0f,0f,0f],DeathTime:-81s}
execute if entity @s[scores={lifetime=1}] run summon minecraft:zombie -67.0 102 1876.0 {Tags:["GerudoPot","Invisible","Resist"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:73}}],ArmorDropChances:[0f,0f,0f,0f],DeathTime:-81s}
execute if entity @s[scores={lifetime=1}] run summon minecraft:zombie -73.0 102 1876.0 {Tags:["GerudoPot","Invisible","Resist"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:73}}],ArmorDropChances:[0f,0f,0f,0f],DeathTime:-81s}
execute if entity @s[scores={lifetime=1}] run summon minecraft:zombie -79.0 102 1876.0 {Tags:["GerudoPot","Invisible","Resist"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:73}}],ArmorDropChances:[0f,0f,0f,0f],DeathTime:-81s}
execute if entity @s[scores={lifetime=1}] run summon minecraft:zombie -85.0 102 1876.0 {Tags:["GerudoPot","Invisible","Resist"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:73}}],ArmorDropChances:[0f,0f,0f,0f],DeathTime:-81s}
execute if entity @s[scores={lifetime=1}] run summon minecraft:zombie -91.0 102 1876.0 {Tags:["GerudoPot","Invisible","Resist"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:73}}],ArmorDropChances:[0f,0f,0f,0f],DeathTime:-81s}
execute if entity @s[scores={lifetime=1}] run summon minecraft:zombie -97.0 102 1876.0 {Tags:["GerudoPot","Invisible","Resist"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:73}}],ArmorDropChances:[0f,0f,0f,0f],DeathTime:-81s}
#Hit
execute as @e[type=zombie,tag=GerudoPot,nbt={HurtTime:10s}] run tag @s add Target1
execute as @e[type=zombie,tag=GerudoPot,tag=Target1] run scoreboard players add @a Score 100
execute as @e[type=zombie,tag=GerudoPot,tag=Target1] run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ 1 2
execute as @e[type=zombie,tag=GerudoPot,tag=Target1] run kill @s

#Targets
#1
execute if entity @e[type=arrow,x=-67,y=107,z=1866,dx=0,dz=0] run tag @s add Target1
execute as @e[type=arrow,x=-67,y=107,z=1866,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-67,y=109,z=1866,dx=0,dz=0] run tag @s add Target1
execute as @e[type=arrow,x=-67,y=109,z=1866,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-68,y=108,z=1866,dx=2,dz=0] run tag @s add Target1
execute as @e[type=arrow,x=-68,y=108,z=1866,dx=2,dz=0] run kill @s
execute if entity @e[type=arrow,x=-67,y=106,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-67,y=106,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-68,y=107,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-68,y=107,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-69,y=108,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-69,y=108,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-68,y=109,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-68,y=109,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-67,y=110,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-67,y=110,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-66,y=109,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-66,y=109,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-65,y=108,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-65,y=108,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-66,y=107,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-66,y=107,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-66,y=106,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-66,y=106,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-68,y=106,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-68,y=106,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-69,y=107,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-69,y=107,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-69,y=109,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-69,y=109,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-68,y=110,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-68,y=110,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-66,y=110,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-66,y=110,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-65,y=109,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-65,y=109,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-65,y=107,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-65,y=107,z=1867,dx=0,dz=0] run kill @s
#2
execute if entity @e[type=arrow,x=-93,y=107,z=1866,dx=0,dz=0] run tag @s add Target1
execute as @e[type=arrow,x=-93,y=107,z=1866,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-93,y=109,z=1866,dx=0,dz=0] run tag @s add Target1
execute as @e[type=arrow,x=-93,y=109,z=1866,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-94,y=108,z=1866,dx=2,dz=0] run tag @s add Target1
execute as @e[type=arrow,x=-94,y=108,z=1866,dx=2,dz=0] run kill @s
execute if entity @e[type=arrow,x=-93,y=106,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-93,y=106,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-94,y=107,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-94,y=107,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-95,y=108,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-95,y=108,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-94,y=109,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-94,y=109,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-93,y=110,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-93,y=110,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-92,y=109,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-92,y=109,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-91,y=108,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-91,y=108,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-92,y=107,z=1867,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-92,y=107,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-92,y=106,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-92,y=106,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-94,y=106,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-94,y=106,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-95,y=107,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-95,y=107,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-95,y=109,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-95,y=109,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-94,y=110,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-94,y=110,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-92,y=110,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-92,y=110,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-91,y=109,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-91,y=109,z=1867,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-91,y=107,z=1867,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-91,y=107,z=1867,dx=0,dz=0] run kill @s
#3
execute if entity @e[type=arrow,x=-81,y=109,z=1866,dx=2,dy=2,dz=0] run tag @s add Target1
execute as @e[type=arrow,x=-81,y=109,z=1866,dx=2,dy=2,dz=0] run kill @s
execute if entity @e[type=arrow,x=-82,y=108,z=1867,dx=4,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-82,y=108,z=1867,dx=4,dz=0] run kill @s
execute if entity @e[type=arrow,x=-82,y=112,z=1867,dx=4,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-82,y=112,z=1867,dx=4,dz=0] run kill @s
execute if entity @e[type=arrow,x=-82,y=109,z=1867,dx=0,dy=2,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-82,y=109,z=1867,dx=0,dy=2,dz=0] run kill @s
execute if entity @e[type=arrow,x=-78,y=109,z=1867,dx=0,dy=2,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-78,y=109,z=1867,dx=0,dy=2,dz=0] run kill @s
execute if entity @e[type=arrow,x=-82,y=107,z=1867,dx=4,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-82,y=107,z=1867,dx=4,dz=0] run kill @s
execute if entity @e[type=arrow,x=-82,y=113,z=1867,dx=4,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-82,y=113,z=1867,dx=4,dz=0] run kill @s
execute if entity @e[type=arrow,x=-81,y=114,z=1867,dx=2,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-81,y=114,z=1867,dx=2,dz=0] run kill @s
execute if entity @e[type=arrow,x=-81,y=106,z=1867,dx=2,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-81,y=106,z=1867,dx=2,dz=0] run kill @s
execute if entity @e[type=arrow,x=-84,y=109,z=1867,dx=0,dy=2,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-84,y=109,z=1867,dx=0,dy=2,dz=0] run kill @s
execute if entity @e[type=arrow,x=-76,y=109,z=1867,dx=0,dy=2,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-76,y=109,z=1867,dx=0,dy=2,dz=0] run kill @s
execute if entity @e[type=arrow,x=-77,y=108,z=1867,dx=0,dy=4,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-77,y=108,z=1867,dx=0,dy=4,dz=0] run kill @s
execute if entity @e[type=arrow,x=-83,y=108,z=1867,dx=0,dy=4,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-83,y=108,z=1867,dx=0,dy=4,dz=0] run kill @s
#4
execute if entity @e[type=arrow,x=-143.79,y=109,z=1895,dx=0,dz=0] run tag @s add Target1
execute as @e[type=arrow,x=-143.79,y=109,z=1895,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-143.79,y=108,z=1895,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-143.79,y=108,z=1895,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-143.79,y=109,z=1896,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-143.79,y=109,z=1896,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-143.79,y=110,z=1895,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-143.79,y=110,z=1895,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-143.79,y=109,z=1894,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=-143.79,y=109,z=1894,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-143.79,y=108,z=1894,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-143.79,y=108,z=1894,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-143.79,y=108,z=1896,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-143.79,y=108,z=1896,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-143.79,y=110,z=1896,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-143.79,y=110,z=1896,dx=0,dz=0] run kill @s
execute if entity @e[type=arrow,x=-143.79,y=110,z=1894,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=-143.79,y=110,z=1894,dx=0,dz=0] run kill @s
#5
execute if entity @s[scores={lifetime=86..}] if entity @e[type=arrow,x=0.79,y=109,z=1895,dx=0,dz=0] run tag @s add Target1
execute as @e[type=arrow,x=0.79,y=109,z=1895,dx=0,dz=0] run kill @s
execute if entity @s[scores={lifetime=86..}] if entity @e[type=arrow,x=0.79,y=108,z=1895,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=0.79,y=108,z=1895,dx=0,dz=0] run kill @s
execute if entity @s[scores={lifetime=86..}] if entity @e[type=arrow,x=0.79,y=109,z=1896,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=0.79,y=109,z=1896,dx=0,dz=0] run kill @s
execute if entity @s[scores={lifetime=86..}] if entity @e[type=arrow,x=0.79,y=110,z=1895,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=0.79,y=110,z=1895,dx=0,dz=0] run kill @s
execute if entity @s[scores={lifetime=86..}] if entity @e[type=arrow,x=0.79,y=109,z=1894,dx=0,dz=0] run tag @s add Target2
execute as @e[type=arrow,x=0.79,y=109,z=1894,dx=0,dz=0] run kill @s
execute if entity @s[scores={lifetime=86..}] if entity @e[type=arrow,x=0.79,y=108,z=1894,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=0.79,y=108,z=1894,dx=0,dz=0] run kill @s
execute if entity @s[scores={lifetime=86..}] if entity @e[type=arrow,x=0.79,y=108,z=1896,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=0.79,y=108,z=1896,dx=0,dz=0] run kill @s
execute if entity @s[scores={lifetime=86..}] if entity @e[type=arrow,x=0.79,y=110,z=1896,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=0.79,y=110,z=1896,dx=0,dz=0] run kill @s
execute if entity @s[scores={lifetime=86..}] if entity @e[type=arrow,x=0.79,y=110,z=1894,dx=0,dz=0] run tag @s add Target3
execute as @e[type=arrow,x=0.79,y=110,z=1894,dx=0,dz=0] run kill @s

#Hit
execute if entity @s[tag=Target1] run scoreboard players add @a Score 100
execute if entity @s[tag=Target1] run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ 1 2
execute if entity @s[tag=Target1] run tag @s remove Target1
execute if entity @s[tag=Target2] run scoreboard players add @a Score 60
execute if entity @s[tag=Target2] run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ 1 1
execute if entity @s[tag=Target2] run tag @s remove Target2
execute if entity @s[tag=Target3] run scoreboard players add @a Score 30
execute if entity @s[tag=Target3] run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ 1 .5
execute if entity @s[tag=Target3] run tag @s remove Target3

#Finish Game
execute if entity @a[scores={MinigameSeeds=..0}] unless entity @e[type=arrow] unless entity @s[scores={lifetime=706..}] run scoreboard players set @s lifetime 706

execute if entity @s[scores={lifetime=706}] run tag @a add NoBow
execute if entity @s[scores={lifetime=706}] run clear @a minecraft:arrow
execute if entity @s[scores={lifetime=706}] run clear @a minecraft:bow
execute if entity @s[scores={lifetime=706}] run kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
execute if entity @s[scores={lifetime=706..710}] run tp @s -28 101 1890 0 ~
execute if entity @s[scores={lifetime=706..710}] run tp @a -34 101 1892 180 ~

#Options
#Under 1000
execute if entity @s[scores={lifetime=710}] if entity @a[scores={Score=..1000}] run tellraw @a ["",{"text":"Gerudo:","color":"gold"},{"text":" Hmm... "},{"score":{"name":"@a","objective":"Score"}},{"text":"... Wha-ha-ha! You have plenty of room for improvement!"}]
#Over 1500
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] if entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @a[scores={Score=1500..}] run tellraw @a ["",{"text":"Gerudo:","color":"gold"},{"text":" I'll be darned! You are the ultimate master! I will give you an item suitable for the master. This quiver is very important to me. I want you to have it. Take good care of it, OK?"}]
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] if entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @a[scores={Score=1500..}] as @e[type=area_effect_cloud,tag=Progress] if entity @s[tag=FairyBowUpgrade1] run tag @s add FairyBowUpgrade2
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] if entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @a[scores={Score=1500..}] if entity @e[type=area_effect_cloud,tag=Progress,tag=FairyBowUpgrade2] run advancement grant @a only minecraft:_upgrades/biggest_quiver
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] if entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @a[scores={Score=1500..}] if entity @e[type=area_effect_cloud,tag=Progress,tag=FairyBowUpgrade2] run tellraw @a ["",{"text":"You upgraded your quiver to the ","color":"white"},{"text":"Biggest Quiver","color":"red"},{"text":"! Now you can carry even more arrows, to the maximum of "},{"text":"50","color":"yellow"},{"text":"!"}]
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] if entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @a[scores={Score=1500..}] if entity @e[type=area_effect_cloud,tag=Progress,tag=FairyBowUpgrade2] run scoreboard players set @a ArrowCount2 50
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] if entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @a[scores={Score=1500..}] as @e[type=area_effect_cloud,tag=Progress] unless entity @s[tag=FairyBowUpgrade1] run tag @s add FairyBowUpgrade1
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] if entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @a[scores={Score=1500..}] as @e[type=area_effect_cloud,tag=Progress,tag=FairyBowUpgrade1] unless entity @s[tag=FairyBowUpgrade2] run advancement grant @a only minecraft:_upgrades/big_quiver
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] if entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @a[scores={Score=1500..}] as @e[type=area_effect_cloud,tag=Progress,tag=FairyBowUpgrade1] unless entity @s[tag=FairyBowUpgrade2] run tellraw @a ["",{"text":"You upgraded your quiver to a ","color":"white"},{"text":"Big Quiver","color":"red"},{"text":"! Now you can carry more arrows-"},{"text":"40 ","color":"yellow"},{"text":"in total!"}]
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] if entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @a[scores={Score=1500..}] as @e[type=area_effect_cloud,tag=Progress,tag=FairyBowUpgrade1] unless entity @s[tag=FairyBowUpgrade2] run scoreboard players set @a ArrowCount2 40
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] if entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @a[scores={Score=1500..}] run tag @s add Prize2
#Over 1000 General
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] if entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @a[scores={Score=1000..1499}] run tellraw @a ["",{"text":"Gerudo:","color":"gold"},{"text":" Hmm... "},{"score":{"name":"@a","objective":"Score"}},{"text":"... Quite impressive!"}]
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] if entity @s[tag=Prize1] if entity @s[tag=Prize2] if entity @a[scores={Score=1000..}] run tellraw @a ["",{"text":"Gerudo:","color":"gold"},{"text":" Hmm... "},{"score":{"name":"@a","objective":"Score"}},{"text":"... Quite impressive!"}]
#Over 1000 First Time
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] unless entity @s[tag=Prize1] if entity @a[scores={Score=1000..}] run tellraw @a ["",{"text":"Gerudo:","color":"gold"},{"text":" Fantastic! You are a true master! I will give this to you. Keep improving yourself!"}]
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] unless entity @s[tag=Prize1] if entity @a[scores={Score=1000..}] run tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] unless entity @s[tag=Prize1] if entity @a[scores={Score=1000..}] run give @a minecraft:golden_carrot{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b} 1
execute if entity @s[scores={lifetime=710}] as @e[type=armor_stand,tag=PermanentGerudo5] unless entity @s[tag=Prize1] if entity @a[scores={Score=1000..}] run tag @s add Prize1

#End
execute if entity @s[scores={lifetime=711}] run function ocarina_of_time:music/gerudo_valley
execute if entity @s[scores={lifetime=711}] run scoreboard objectives remove Score
execute if entity @s[scores={lifetime=711}] run kill @e[type=zombie,tag=GerudoPot]
execute if entity @s[scores={lifetime=711}] run team leave @a
execute if entity @s[scores={lifetime=711}] run team leave @s
execute if entity @s[scores={lifetime=711}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={lifetime=711}] run give @a minecraft:arrow{display:{Name:"{\"text\":\"Arrow\"}"},NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}
execute if entity @s[scores={lifetime=711}] run scoreboard players reset @a MinigameSeeds
execute if entity @s[scores={lifetime=711}] run tag @a remove HorseArchery
execute if entity @s[scores={lifetime=711}] run scoreboard players set @s lifetime 0
