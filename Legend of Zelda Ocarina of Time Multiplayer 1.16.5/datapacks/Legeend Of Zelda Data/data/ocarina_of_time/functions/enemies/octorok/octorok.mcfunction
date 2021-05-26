#Height
scoreboard objectives add Octorok dummy
execute store result score @s ArrowCount run data get entity @p Pos[1] 1000
execute store result score @s Octorok run data get entity @s Pos[1] 1000

#Locate
execute if entity @a[distance=3..13] run tag @s add Locate
execute unless entity @a[distance=3..13] run tag @s remove Locate
execute unless entity @a[distance=3..13] run tag @s remove Attack

execute positioned ~-2 ~ ~-2 unless entity @a[dx=4,dy=100,dz=4] unless entity @s[tag=SpecialOctorok] unless entity @s[tag=Attack] if entity @s[tag=Locate] at @s anchored eyes positioned ^ ^ ^ anchored feet run function ocarina_of_time:enemies/ray_cast

#Attack
execute if entity @s[tag=Attack] run scoreboard players add @s timer 1

#Spotted
execute if entity @a[distance=3..13] run tp @s ~ ~ ~ facing entity @p

#Gone
execute positioned ~-8 ~ ~-8 unless entity @a[dx=16,dy=100,dz=16] run scoreboard players set @s timer 0
execute positioned ~-8 ~ ~-8 unless entity @a[dx=16,dy=100,dz=16] run scoreboard players set @s timer 0
execute positioned ~-8 ~ ~-8 unless entity @a[dx=16,dy=100,dz=16] run scoreboard players set @s timer 0

#Reset
execute if entity @s[scores={timer=90..}] run scoreboard players set @s timer 2

#OckRock
execute at @s if entity @s[scores={timer=26}] positioned ~ ~-1 ~ unless entity @a[dx=0,limit=1] if score @s ArrowCount >= @s Octorok run data modify entity @s Pos[1] set from entity @p Pos[1]
execute positioned ~-2 ~1 ~-2 if entity @a[dx=4,dy=2,dz=4] at @s run scoreboard players set @s timer -1

#Deflect
execute if entity @e[type=armor_stand,tag=OckRock,tag=Deflect,distance=..1] run playsound minecraft:entity.panda.hurt hostile @a ~ ~ ~ .5 1.5
execute if entity @e[type=armor_stand,tag=OckRock,tag=Deflect,distance=..1] run kill @s
execute as @e[type=armor_stand,tag=OckRock,tag=Deflect,distance=..1] run kill @s

#Rotation
data modify entity @s Rotation[1] set value 0f

#Sound
execute if entity @s[scores={timer=1}] run playsound minecraft:ambient.underwater.exit hostile @a ~ ~ ~ .5 1.5
execute positioned ~-2 ~2 ~-2 if entity @a[dx=4,dy=2,dz=4] at @s if block ~ ~1 ~ minecraft:air unless entity @s[scores={timer=0}] run playsound minecraft:ambient.underwater.enter hostile @a ~ ~ ~ .5 1.5
execute positioned ~-8 ~ ~-8 unless entity @a[dx=16,dy=100,dz=16] unless entity @s[scores={timer=0}] run playsound minecraft:ambient.underwater.enter hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={timer=26}] run playsound minecraft:ambient.underwater.exit hostile @a ~ ~ ~ .5 1.5
execute if entity @s[scores={timer=30}] run playsound minecraft:block.dispenser.launch hostile @p
execute if entity @s[scores={timer=40}] run playsound minecraft:ambient.underwater.enter hostile @a ~ ~ ~ .5 1.5

#Slingshot
execute if entity @e[type=snowball,distance=..2] run tag @s add Kill

#Kill
execute if entity @s[tag=Kill] run playsound minecraft:entity.panda.hurt hostile @a ~ ~ ~ .5 1.5
execute if entity @s[tag=Kill] run kill @s
