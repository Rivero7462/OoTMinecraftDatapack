#Scores
execute if entity @s[tag=Attack] run scoreboard players add @s lifetime 1

#Rotation
data modify entity @s Rotation[1] set value 0f

#Attack
execute if entity @a[distance=..6] run tag @s add Attack

#Appear
execute if entity @s[scores={lifetime=1}] run tp @s ~ ~3 ~

#Reset
execute unless entity @s[tag=Attack] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Attack] run scoreboard players set @s lifetime 0

#Strafe Right
execute if entity @s[tag=Right,scores={lifetime=20..140}] facing entity @p feet rotated ~ 0 if block ~ ~-.1 ~ #ocarina_of_time:wolfos run tp @s ^ ^-.1 ^ ~-90 0
execute if entity @s[tag=Right,scores={lifetime=20..140}] facing entity @p feet rotated ~ 0 unless block ~ ~-.1 ~ #ocarina_of_time:wolfos if block ^.6 ^ ^ #ocarina_of_time:wolfos if block ^.6 ^ ^-.4 #ocarina_of_time:wolfos if block ^.6 ^ ^.4 #ocarina_of_time:wolfos run tp @s ^.2 ^ ^ ~-90 0
execute if entity @s[tag=Right,scores={lifetime=20..140}] facing entity @p feet rotated ~ 0 unless block ~ ~-.1 ~ #ocarina_of_time:wolfos unless block ^.6 ^ ^ #ocarina_of_time:wolfos run scoreboard players add @s timer 1
execute if entity @s[tag=Right,scores={lifetime=20..140}] facing entity @p feet rotated ~ 0 unless block ~ ~-.1 ~ #ocarina_of_time:wolfos unless block ^.6 ^ ^-.4 #ocarina_of_time:wolfos run scoreboard players add @s timer 1
execute if entity @s[tag=Right,scores={lifetime=20..140}] facing entity @p feet rotated ~ 0 unless block ~ ~-.1 ~ #ocarina_of_time:wolfos unless block ^.6 ^ ^.4 #ocarina_of_time:wolfos run scoreboard players add @s timer 1

#Strafe Left
execute if entity @s[tag=Left,scores={lifetime=20..140}] facing entity @p feet rotated ~ 0 if block ~ ~-.1 ~ #ocarina_of_time:wolfos run tp @s ^ ^-.1 ^ ~90 0
execute if entity @s[tag=Left,scores={lifetime=20..140}] facing entity @p feet rotated ~ 0 unless block ~ ~-.1 ~ #ocarina_of_time:wolfos if block ^-.6 ^ ^ #ocarina_of_time:wolfos if block ^-.6 ^ ^-.4 #ocarina_of_time:wolfos if block ^-.6 ^ ^.4 #ocarina_of_time:wolfos run tp @s ^-.2 ^ ^ ~90 0
execute if entity @s[tag=Left,scores={lifetime=20..140}] facing entity @p feet rotated ~ 0 unless block ~ ~-.1 ~ #ocarina_of_time:wolfos unless block ^-.6 ^ ^ #ocarina_of_time:wolfos run scoreboard players add @s timer 1
execute if entity @s[tag=Left,scores={lifetime=20..140}] facing entity @p feet rotated ~ 0 unless block ~ ~-.1 ~ #ocarina_of_time:wolfos unless block ^-.6 ^ ^-.4 #ocarina_of_time:wolfos run scoreboard players add @s timer 1
execute if entity @s[tag=Left,scores={lifetime=20..140}] facing entity @p feet rotated ~ 0 unless block ~ ~-.1 ~ #ocarina_of_time:wolfos unless block ^-.6 ^ ^.4 #ocarina_of_time:wolfos run scoreboard players add @s timer 1

#Too Far
execute if entity @s[tag=Attack] unless entity @a[distance=..6] unless entity @s[scores={lifetime=141..191}] facing entity @p feet rotated ~ 0 if block ^ ^ ^.5 #ocarina_of_time:wolfos run tp @s ^ ^ ^.2 ~ 0

#Vulnerable
execute if entity @s[scores={lifetime=20}] run tag @s add RemoveResist
execute if entity @s[scores={lifetime=30}] run tag @s add Resist
execute if entity @s[scores={lifetime=90}] run tag @s add RemoveResist
execute if entity @s[scores={lifetime=100}] run tag @s add Resist
execute if entity @s[scores={lifetime=162}] run tag @s add RemoveResist
execute if entity @s[scores={lifetime=190}] run tag @s add Resist

#Approach
execute if entity @s[scores={lifetime=141..160}] if entity @a[distance=..0.6] run scoreboard players set @s lifetime 161
execute if entity @s[scores={lifetime=141..160}] facing entity @p feet rotated ~ 0 if block ^ ^ ^.5 #ocarina_of_time:wolfos run tp @s ^ ^ ^.2 ~ 0
execute if entity @s[scores={lifetime=161..190}] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0
execute if entity @s[scores={lifetime=191}] run scoreboard players add @s timer 1
execute if entity @s[scores={lifetime=191}] run scoreboard players set @s lifetime 20

#Hurt
execute if entity @s[tag=!Resist,nbt={HurtTime:10s}] unless entity @s[scores={lifetime=200..}] run scoreboard players set @s lifetime 29

#Slingshot
execute if entity @s[tag=!Resist] if entity @e[type=snowball,distance=..2] run effect give @s minecraft:resistance 1 1 true
execute if entity @s[tag=!Resist] if entity @e[type=snowball,distance=..2] run effect give @s minecraft:instant_health 1 0 true

#Block
execute if entity @s[tag=Resist,nbt={HurtTime:10s}] unless entity @s[scores={lifetime=200..}] run scoreboard players set @s lifetime 200
execute if entity @s[scores={lifetime=200..209}] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0
execute if entity @s[scores={lifetime=210}] run scoreboard players add @s timer 1
execute if entity @s[scores={lifetime=210}] run scoreboard players set @s lifetime 19

#Direction
execute if entity @s[scores={timer=0}] run tag @s add Right
execute if entity @s[scores={timer=0}] run tag @s remove Left
execute if entity @s[scores={timer=1}] run tag @s add Left
execute if entity @s[scores={timer=1}] run tag @s remove Right
execute if entity @s[scores={timer=2..}] facing entity @p feet rotated ~ 0 if block ^ ^ ^.5 #ocarina_of_time:wolfos run tp @s ^ ^ ^.2 ~ 0
execute if entity @s[scores={timer=2..}] run scoreboard players set @s timer 0

#Damage
execute if entity @s[tag=Damage] run tag @s add RemoveResist
execute if entity @s[tag=Damage2] run tag @s add RemoveResist

#Resist
execute if entity @s[tag=Resist] run data merge entity @s {Attributes:[{Name:"generic.attack_damage",Base:0}]}

execute if entity @s[tag=RemoveResist] run tag @s remove Resist
execute if entity @s[tag=RemoveResist] run effect clear @s minecraft:resistance
execute if entity @s[tag=RemoveResist] run data merge entity @s {Attributes:[{Name:"generic.attack_damage",Base:1}]}
execute if entity @s[tag=RemoveResist] run tag @s remove RemoveResist

execute if entity @s[tag=Damage] run effect give @s minecraft:instant_health 1 1 true
execute if entity @s[tag=Damage] run tag @s add Resist
execute if entity @s[tag=Damage] run playsound minecraft:entity.wolf.hurt hostile @a ~ ~ ~ .3 1.3
execute if entity @s[tag=Damage] run tag @s remove Damage

execute if entity @s[tag=Damage2] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[tag=Damage2] run tag @s add Resist
execute if entity @s[tag=Damage2] run playsound minecraft:entity.wolf.hurt hostile @a ~ ~ ~ .3 1.3
execute if entity @s[tag=Damage2] run tag @s remove Damage2

#Sounds
execute if entity @s[scores={lifetime=1}] run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ .3 1.3
execute if entity @s[scores={lifetime=156}] run playsound minecraft:entity.wolf.growl hostile @a ~ ~ ~ .3 2
execute if entity @s[scores={lifetime=166}] run playsound minecraft:entity.wolf.growl hostile @a ~ ~ ~ .3 2
execute if entity @s[tag=!Resist,nbt={HurtTime:10s}] run playsound minecraft:entity.wolf.hurt hostile @a ~ ~ ~ .3 1.3
execute if entity @s[tag=Resist,nbt={HurtTime:10s}] run playsound minecraft:block.anvil.place hostile @a ~ ~ ~ 1 1.3

#Stun
execute if entity @s[tag=Stun,nbt={HurtTime:10s}] run scoreboard players set @s GameTimer 109
execute if entity @s[tag=Stun] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1..}] run scoreboard players set @s lifetime 18
execute if entity @s[scores={GameTimer=1}] run tag @s add RemoveResist
execute if entity @s[scores={GameTimer=1}] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={GameTimer=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ .2 .1 .2 1 1
execute if entity @s[scores={GameTimer=110}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={GameTimer=110}] run tag @s add Resist
execute if entity @s[scores={GameTimer=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s GameTimer 0
