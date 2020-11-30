execute unless entity @s[tag=Respawn] if entity @a[distance=..2.3] run tag @s add Grab
execute if entity @a[distance=..2.3] unless entity @s[tag=Once] run function ocarina_of_time:music/mini_boss
execute if entity @a[distance=..2.3] run tag @e[type=wither_skeleton,tag=DeadHand,tag=Hand] add Once

execute if entity @s[tag=Grab] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run data merge entity @s {HandItems:[{},{}],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:28}}]}
execute if entity @s[tag=Hand5,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run tp @s 1597 85 920
execute if entity @s[tag=Hand6,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run tp @s 1595 85 926
execute if entity @s[tag=Hand7,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run tp @s 1598 85 931
execute if entity @s[tag=Hand8,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run tp @s 1603 85 930
execute if entity @s[tag=Hand9,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run tp @s 1605 85 924
execute if entity @s[tag=Hand10,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run tp @s 1602 85 919
execute if entity @s[scores={timer=2}] run tag @e[type=armor_stand,tag=DeadHand] add Attack
execute if entity @s[scores={timer=1}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={timer=2..100}] unless entity @a[scores={ResetHealth=1..}] run tp @a ^ ^ ^1.8
execute if entity @s[scores={timer=101}] run data merge entity @s {HandItems:[{},{id:cobblestone,Count:1b,tag:{CustomModelData:27}}],ArmorItems:[{},{},{},{}]}
execute if entity @s[scores={timer=120}] run tag @s remove Grab
execute if entity @s[scores={timer=120}] run scoreboard players set @s timer 0

#Hand 1
execute if entity @s[tag=Hand5,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1597 91 920 1 1 1 1 200 normal
execute if entity @s[tag=Hand5,scores={timer=2}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1597 92 920 1 1 1 1 200 normal
execute if entity @s[tag=Hand5,scores={timer=3}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1597 93 920 1 1 1 1 200 normal
execute if entity @s[tag=Hand5,scores={timer=4}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1597 94 920 1 1 1 1 200 normal
#Hand 2
execute if entity @s[tag=Hand6,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1595 91 926 1 1 1 1 200 normal
execute if entity @s[tag=Hand6,scores={timer=2}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1595 92 926 1 1 1 1 200 normal
execute if entity @s[tag=Hand6,scores={timer=3}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1595 93 926 1 1 1 1 200 normal
execute if entity @s[tag=Hand6,scores={timer=4}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1595 94 926 1 1 1 1 200 normal
#Hand 3
execute if entity @s[tag=Hand7,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1598 91 931 1 1 1 1 200 normal
execute if entity @s[tag=Hand7,scores={timer=2}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1598 92 931 1 1 1 1 200 normal
execute if entity @s[tag=Hand7,scores={timer=3}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1598 93 931 1 1 1 1 200 normal
execute if entity @s[tag=Hand7,scores={timer=4}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1598 94 931 1 1 1 1 200 normal
#Hand 4
execute if entity @s[tag=Hand8,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1603 91 930 1 1 1 1 200 normal
execute if entity @s[tag=Hand8,scores={timer=2}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1603 92 930 1 1 1 1 200 normal
execute if entity @s[tag=Hand8,scores={timer=3}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1603 93 930 1 1 1 1 200 normal
execute if entity @s[tag=Hand8,scores={timer=4}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1603 94 930 1 1 1 1 200 normal
#Hand 5
execute if entity @s[tag=Hand9,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1605 91 924 1 1 1 1 200 normal
execute if entity @s[tag=Hand9,scores={timer=2}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1605 92 924 1 1 1 1 200 normal
execute if entity @s[tag=Hand9,scores={timer=3}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1605 93 924 1 1 1 1 200 normal
execute if entity @s[tag=Hand9,scores={timer=4}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1605 94 924 1 1 1 1 200 normal
#Hand 6
execute if entity @s[tag=Hand10,scores={timer=1}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1602 91 919 1 1 1 1 200 normal
execute if entity @s[tag=Hand10,scores={timer=2}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1602 92 919 1 1 1 1 200 normal
execute if entity @s[tag=Hand10,scores={timer=3}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1602 93 919 1 1 1 1 200 normal
execute if entity @s[tag=Hand10,scores={timer=4}] as @e[type=armor_stand,tag=DeadHand] unless entity @s[tag=Attack] run particle minecraft:block minecraft:dirt 1602 94 919 1 1 1 1 200 normal

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
