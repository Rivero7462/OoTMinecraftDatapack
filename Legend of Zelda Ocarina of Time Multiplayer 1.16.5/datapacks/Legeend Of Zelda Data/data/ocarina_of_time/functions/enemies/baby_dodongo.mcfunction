#Fire
data merge entity @s {Fire:0s}

#Scores
execute if entity @a[distance=..1.5] run tag @s add Jump
execute as @s[tag=Jump] run scoreboard players add @s timer 1
execute unless entity @s[tag=Stun] if entity @s[tag=Attack] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Stun] run scoreboard players add @s time 1

#Rotation
data modify entity @s Rotation[1] set value 0f
execute if entity @s[scores={lifetime=1..11}] run tp @s ~ ~ ~ facing entity @p

#Show/Hide
execute if entity @s[scores={lifetime=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:dead_brain_coral,Count:1b,tag:{CustomModelData:1}}]}
execute if entity @s[scores={lifetime=1..11}] unless entity @s[tag=Dead] run tp @s ~ ~.1 ~
execute if entity @s[scores={lifetime=12}] unless entity @s[tag=Dead] run data merge entity @s {Invulnerable:0b,NoGravity:0b}

execute if entity @s[scores={lifetime=260..}] unless entity @s[tag=Dead] run tp @s ~ ~-1 ~

#Attack
execute if entity @a[distance=..8] run tag @s add Attack

#Jump
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1..6}] unless entity @s[tag=Dead] run tp @s ~ ~.2 ~
execute unless entity @s[tag=Stun] unless entity @a[distance=..2] run tag @s remove Jump
execute unless entity @s[tag=Stun] unless entity @a[distance=..2] run scoreboard players set @s timer 0

#Stun
execute if entity @s[tag=Stun] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={time=1..110}] run particle minecraft:falling_dust blue_wool ~ ~.5 ~ .3 .1 .3 1 1
execute if entity @s[scores={time=1..110}] run scoreboard players set @s time 0
execute if entity @s[scores={time=110..}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={time=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s time 0

#Sounds
execute if entity @s[scores={lifetime=1}] unless entity @s[tag=Dead] run playsound minecraft:block.grass.hit hostile @p ~ ~ ~ 1 1
execute if entity @s[scores={lifetime=5}] unless entity @s[tag=Dead] run playsound minecraft:block.grass.hit hostile @p ~ ~ ~ 1 1
execute if entity @s[scores={lifetime=9}] unless entity @s[tag=Dead] run playsound minecraft:block.grass.hit hostile @p ~ ~ ~ 1 1

execute unless entity @s[tag=Stun] if entity @s[scores={timer=4}] run playsound minecraft:entity.horse.eat hostile @p ~ ~ ~ 1 1.2

#Slingshot
execute if entity @e[type=snowball,distance=..2] run summon minecraft:item ~ ~ ~ {Item:{id:tnt,Count:1,tag:{display:{Name:"\"Bomb\""}}},PickupDelay:0}
execute if entity @e[type=snowball,distance=..2] run kill @s

#Kill
execute if entity @s[tag=Kill] run summon minecraft:item ~ ~ ~ {Item:{id:tnt,Count:1,tag:{display:{Name:"\"Bomb\""}}},PickupDelay:0}
execute if entity @s[tag=Kill] run kill @s
