execute unless entity @s[tag=Respawn] if entity @a[distance=..2.3] run tag @s add Grab
execute if entity @a[distance=..2.3] unless entity @s[tag=Once] run function ocarina_of_time:music/mini_boss
execute if entity @a[distance=..2.3] run tag @e[type=wither_skeleton,tag=DeadHand,tag=Hand] add Once

execute if entity @s[tag=Grab] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run data merge entity @s {HandItems:[{},{}],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:28}}]}
execute if entity @s[tag=Hand1,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run tp @s 23 51 1365
execute if entity @s[tag=Hand2,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run tp @s 27 51 1365
execute if entity @s[tag=Hand3,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run tp @s 27 51 1361
execute if entity @s[tag=Hand4,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run tp @s 23 51 1361
execute if entity @s[scores={timer=2}] run tag @e[type=armor_stand,tag=DeadHand] add Attack
execute if entity @s[scores={timer=1}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={timer=2..100}] unless entity @a[scores={ResetHealth=1..}] run tp @a ^ ^ ^1.8
execute if entity @s[scores={timer=101}] run data merge entity @s {HandItems:[{},{id:cobblestone,Count:1b,tag:{CustomModelData:27}}],ArmorItems:[{},{},{},{}]}
execute if entity @s[scores={timer=120}] run tag @s remove Grab
execute if entity @s[scores={timer=120}] run scoreboard players set @s timer 0

#Hand 1
execute if entity @s[tag=Hand1,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 23 59 1365 1 1 1 1 200 normal
execute if entity @s[tag=Hand1,scores={timer=2}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 23 60 1365 1 1 1 1 200 normal
execute if entity @s[tag=Hand1,scores={timer=3}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 23 61 1365 1 1 1 1 200 normal
execute if entity @s[tag=Hand1,scores={timer=4}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 23 62 1365 1 1 1 1 200 normal
#Hand 2
execute if entity @s[tag=Hand2,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 27 59 1365 1 1 1 1 200 normal
execute if entity @s[tag=Hand2,scores={timer=2}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 27 60 1365 1 1 1 1 200 normal
execute if entity @s[tag=Hand2,scores={timer=3}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 27 61 1365 1 1 1 1 200 normal
execute if entity @s[tag=Hand2,scores={timer=4}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 27 62 1365 1 1 1 1 200 normal
#Hand 3
execute if entity @s[tag=Hand3,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 27 59 1361 1 1 1 1 200 normal
execute if entity @s[tag=Hand3,scores={timer=2}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 27 60 1361 1 1 1 1 200 normal
execute if entity @s[tag=Hand3,scores={timer=3}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 27 61 1361 1 1 1 1 200 normal
execute if entity @s[tag=Hand3,scores={timer=4}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 27 62 1361 1 1 1 1 200 normal
#Hand 4
execute if entity @s[tag=Hand4,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 23 59 1361 1 1 1 1 200 normal
execute if entity @s[tag=Hand4,scores={timer=2}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 23 60 1361 1 1 1 1 200 normal
execute if entity @s[tag=Hand4,scores={timer=3}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 23 61 1361 1 1 1 1 200 normal
execute if entity @s[tag=Hand4,scores={timer=4}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 23 62 1361 1 1 1 1 200 normal

#Damage
execute if entity @a[nbt={HurtTime:9s}] if entity @s[tag=Grab] unless entity @s[scores={timer=100..}] unless entity @s[scores={timer=0}] run scoreboard players set @s timer 100

#Hurt
execute unless entity @s[tag=Grab] run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=Grab] run data merge entity @s {Invulnerable:1b}
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s time 1
execute if entity @s[scores={time=3..}] run tp @s ~ ~-5 ~
execute if entity @s[scores={time=3..}] run tag @s add Respawn
execute if entity @s[scores={time=3..}] run scoreboard players set @s time 0

#Respawn
execute if entity @s[tag=Respawn] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=100..}] run tp @s ~ ~5 ~
execute if entity @s[scores={GameTimer=100..}] run tag @s remove Respawn
execute if entity @s[scores={GameTimer=100..}] run scoreboard players set @s GameTimer 0