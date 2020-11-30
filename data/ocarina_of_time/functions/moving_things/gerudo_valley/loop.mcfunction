#Adult/Child
execute unless entity @a[x=386,y=50,z=2040,dx=0,dz=0] if entity @a[tag=Adult] run function ocarina_of_time:moving_things/gerudo_valley/adult
execute unless entity @a[x=386,y=50,z=2040,dx=0,dz=0] unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/gerudo_valley/child

#Music
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] unless entity @a[tag=Indoors] run tag @a add HyruleMusic
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] unless entity @a[tag=StopStalchildSpawn] run function ocarina_of_time:music/gerudo_valley
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run tag @a remove HyruleMusic
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/gerudo_valley
execute if entity @a[scores={time=13001..13010}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/night
execute if entity @a[scores={time=13001..13020}] unless entity @a[tag=Indoors] run scoreboard players add @a time 20
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:gerudo_valley

#Moving People
function ocarina_of_time:moving_things/gerudo_valley/moving_people/loop

#Water Fall
execute at @a if entity @a[x=369,y=33,z=1987,dx=19,dy=20,dz=0] run tp @a ~ ~ ~1
execute at @a if entity @a[x=367,y=38,z=1987,dx=1,dy=15,dz=0] run tp @a ~ ~ ~1

#Enemies
function ocarina_of_time:moving_things/gerudo_valley/enemies/enemies

#Final Valley
execute if entity @a[tag=FinishValley] run function ocarina_of_time:moving_things/gerudo_valley/final_valley

#Cucco
execute as @e[type=chicken,tag=GerudoCucco] at @s if block ~ ~ ~ minecraft:water run tag @s add CuccoFly
execute as @e[type=chicken,tag=GerudoCucco] at @s if entity @s[tag=CuccoFly] run scoreboard players add @s lifetime 1
execute as @e[type=chicken,tag=GerudoCucco] at @s if entity @s[scores={lifetime=1..80}] run tp @s ~ ~.5 ~
execute as @e[type=chicken,tag=GerudoCucco] at @s if entity @s[scores={lifetime=81}] run summon minecraft:chicken 394 76 2045 {Tags:["Cucco","GerudoCucco","Resist"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0}],Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
execute as @e[type=chicken,tag=GerudoCucco] at @s if entity @s[scores={lifetime=81}] run kill @s

#Epona Jump
execute if entity @a[tag=Adult] if block 367 70 2038 minecraft:air if entity @a[x=381,y=75,z=2040,dx=0,dy=3,dz=2] at @a positioned ~ ~-1 ~ if entity @e[type=horse,tag=Epona,distance=..3] run tag @a add JumpFortress
execute if entity @a[tag=Adult] if block 367 70 2038 minecraft:air if entity @a[x=371,y=73,z=2040,dx=0,dy=3,dz=2] at @a positioned ~ ~-1 ~ if entity @e[type=horse,tag=Epona,distance=..3] run tag @a add JumpField
execute if entity @a[tag=Adult] if block 367 70 2038 minecraft:air if entity @a[tag=JumpFortress] as @e[type=horse,tag=Epona] at @s run function ocarina_of_time:moving_things/gerudo_valley/epona_jump/fortress
execute if entity @a[tag=Adult] if block 367 70 2038 minecraft:air if entity @a[tag=JumpField] as @e[type=horse,tag=Epona] at @s run function ocarina_of_time:moving_things/gerudo_valley/epona_jump/field

#Fall
execute at @a as @e[type=horse,tag=Epona,distance=..30] at @s if entity @s[y=65,dy=1] at @a run tp @a ~ ~ ~
execute at @a as @e[type=horse,tag=Epona,distance=..30] at @s if entity @s[y=65,dy=1] run tp @s 397 76 2040

#Grotto
execute if entity @a[x=346,y=77,z=2017,dx=6,dz=6] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run fill 349 75 2020 349 75 2020 minecraft:air
execute if entity @a[tag=ShardAgony,x=346,y=77,z=2017,dx=6,dz=6] run tag @a add ShardAgonyStart
execute unless entity @a[tag=ShardAgony,x=346,y=77,z=2017,dx=6,dz=6] run tag @a remove ShardAgonyStart
