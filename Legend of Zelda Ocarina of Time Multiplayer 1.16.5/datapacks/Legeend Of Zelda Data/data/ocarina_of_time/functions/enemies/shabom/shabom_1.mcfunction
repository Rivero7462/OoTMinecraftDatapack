#Rotation
data modify entity @s Rotation[1] set value 0f

#Spot or Lose
execute if entity @s[scores={lifetime=0}] run tag @s remove Attack
execute unless entity @a[distance=..15] run tag @s remove Attack
execute if entity @s[scores={lifetime=1..2}] if entity @a[distance=..15] run tag @s add Attack

#Locate
execute if entity @a[distance=..15] run tag @s add Locate
execute unless entity @a[distance=..15] run tag @s remove Locate
execute unless entity @a[distance=..15] run tag @s remove Attack
execute unless entity @s[tag=Attack] if entity @s[tag=Locate] anchored eyes positioned ^ ^ ^ anchored feet run function ocarina_of_time:enemies/ray_cast

#Choose
scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=3..}] run scoreboard players set @s lifetime 0

execute unless entity @s[tag=Choose] unless block ^ ^.1 ^.5 #ocarina_of_time:shabom run tag @s add Choose
execute unless entity @s[tag=Choose] unless block ^.4 ^.1 ^.5 #ocarina_of_time:shabom run tag @s add Choose
execute unless entity @s[tag=Choose] unless block ^-.4 ^.1 ^.5 #ocarina_of_time:shabom run tag @s add Choose

execute unless entity @s[tag=Choose] unless block ^-.4 ^.1 ^.5 #ocarina_of_time:shabom run tag @s add Choose

execute if entity @s[tag=Choose] unless entity @s[scores={timer=0..2}] run function ocarina_of_time:enemies/shabom/shabom_3
execute if entity @s[tag=Choose] unless entity @s[tag=ChooseDirection] unless entity @s[tag=Attack2] if entity @s[tag=!Attack,scores={lifetime=0}] run tag @s add ChooseDirection
execute if entity @s[tag=Choose] unless entity @s[tag=ChooseDirection] unless entity @s[tag=Attack2] if entity @s[tag=Attack,scores={lifetime=0}] run tag @s add Attack2
execute if entity @s[tag=Choose] unless entity @s[tag=ChooseDirection] unless entity @s[tag=Attack2] if entity @s[scores={lifetime=1}] run tag @s add ChooseDirection

#Direction
execute if entity @s[tag=ChooseDirection] run tp @s ~ ~ ~ 0 0
execute if entity @s[tag=ChooseDirection] unless block ~ ~ ~1 #ocarina_of_time:shabom run tag @s add North
execute if entity @s[tag=ChooseDirection] unless block ~-.4 ~ ~1 #ocarina_of_time:shabom run tag @s add North
execute if entity @s[tag=ChooseDirection] unless block ~.4 ~ ~1 #ocarina_of_time:shabom run tag @s add North
execute if entity @s[tag=ChooseDirection] unless entity @s[tag=North] unless block ~ ~ ~-1 #ocarina_of_time:shabom run tag @s add South
execute if entity @s[tag=ChooseDirection] unless entity @s[tag=North] unless block ~-.4 ~ ~-1 #ocarina_of_time:shabom run tag @s add South
execute if entity @s[tag=ChooseDirection] unless entity @s[tag=North] unless block ~.4 ~ ~-1 #ocarina_of_time:shabom run tag @s add South
execute if entity @s[tag=ChooseDirection] unless entity @s[tag=North] unless entity @s[tag=South] unless block ~-1 ~ ~ #ocarina_of_time:shabom run tag @s add East
execute if entity @s[tag=ChooseDirection] unless entity @s[tag=North] unless entity @s[tag=South] unless block ~-1 ~ ~-.4 #ocarina_of_time:shabom run tag @s add East
execute if entity @s[tag=ChooseDirection] unless entity @s[tag=North] unless entity @s[tag=South] unless block ~-1 ~ ~.4 #ocarina_of_time:shabom run tag @s add East
execute if entity @s[tag=ChooseDirection] unless entity @s[tag=North] unless entity @s[tag=South] unless entity @s[tag=East] unless block ~1 ~ ~ #ocarina_of_time:shabom run tag @s add West
execute if entity @s[tag=ChooseDirection] unless entity @s[tag=North] unless entity @s[tag=South] unless entity @s[tag=East] unless block ~1 ~ ~-.4 #ocarina_of_time:shabom run tag @s add West
execute if entity @s[tag=ChooseDirection] unless entity @s[tag=North] unless entity @s[tag=South] unless entity @s[tag=East] unless block ~1 ~ ~.4 #ocarina_of_time:shabom run tag @s add West
execute if entity @s[tag=ChooseDirection] unless entity @s[tag=North] unless entity @s[tag=South] unless entity @s[tag=East] unless entity @s[tag=West] run tag @s add Attack
execute if entity @s[tag=ChooseDirection] unless entity @s[tag=North] unless entity @s[tag=South] unless entity @s[tag=East] unless entity @s[tag=West] run tag @s add Attack
execute if entity @s[tag=ChooseDirection] unless entity @s[tag=North] unless entity @s[tag=South] unless entity @s[tag=East] unless entity @s[tag=West] run tag @s add Attack

#Attack
execute if entity @s[tag=Attack2] run scoreboard players add @s timer 1
execute if entity @s[tag=Attack2,scores={timer=1..2}] facing entity @p feet run tp @s ^ ^ ^ ~ 0
execute if entity @s[tag=Attack2,scores={timer=2}] run function ocarina_of_time:enemies/shabom/shabom_2
execute if entity @s[tag=Attack2,scores={timer=3..16}] if block ^ ^ ^.5 #ocarina_of_time:shabom if block ^.4 ^ ^.5 #ocarina_of_time:shabom if block ^-.4 ^ ^.5 #ocarina_of_time:shabom run tp @s ^ ^.1 ^.1
execute if entity @s[tag=Attack2,scores={timer=17..}] if block ^ ^ ^.5 #ocarina_of_time:shabom if block ^.4 ^ ^.5 #ocarina_of_time:shabom if block ^-.4 ^ ^.5 #ocarina_of_time:shabom run tp @s ^ ^-.1 ^.1

#North
execute if entity @s[tag=North] run scoreboard players add @s timer 1
execute if entity @s[tag=North,scores={timer=1..}] run data modify entity @s Rotation[0] set value 180f
execute if entity @s[tag=North,scores={timer=2}] run function ocarina_of_time:enemies/shabom/shabom_2
execute if entity @s[tag=North,scores={timer=3..16}] if block ~ ~ ~-.5 #ocarina_of_time:shabom if block ~.4 ~ ~-.5 #ocarina_of_time:shabom if block ~-.4 ~ ~-.5 #ocarina_of_time:shabom run tp @s ~ ~.1 ~-.1
execute if entity @s[tag=North,scores={timer=17..}] if block ~ ~ ~-.5 #ocarina_of_time:shabom if block ~.4 ~ ~-.5 #ocarina_of_time:shabom if block ~-.4 ~ ~-.5 #ocarina_of_time:shabom run tp @s ~ ~-.1 ~-.1

#South
execute if entity @s[tag=South] run scoreboard players add @s timer 1
execute if entity @s[tag=South,scores={timer=1..}] run data modify entity @s Rotation[0] set value 0f
execute if entity @s[tag=South,scores={timer=2}] run function ocarina_of_time:enemies/shabom/shabom_2
execute if entity @s[tag=South,scores={timer=3..16}] if block ~ ~ ~.5 #ocarina_of_time:shabom if block ~.4 ~ ~.5 #ocarina_of_time:shabom if block ~-.4 ~ ~.5 #ocarina_of_time:shabom run tp @s ~ ~.1 ~.1
execute if entity @s[tag=South,scores={timer=17..}] if block ~ ~ ~.5 #ocarina_of_time:shabom if block ~.4 ~ ~.5 #ocarina_of_time:shabom if block ~-.4 ~ ~.5 #ocarina_of_time:shabom run tp @s ~ ~-.1 ~.1

#East
execute if entity @s[tag=East] run scoreboard players add @s timer 1
execute if entity @s[tag=East,scores={timer=1..}] run data modify entity @s Rotation[0] set value -90f
execute if entity @s[tag=East,scores={timer=2}] run function ocarina_of_time:enemies/shabom/shabom_2
execute if entity @s[tag=East,scores={timer=3..16}] if block ~.5 ~ ~ #ocarina_of_time:shabom if block ~.5 ~ ~.4 #ocarina_of_time:shabom if block ~.5 ~ ~-.4 #ocarina_of_time:shabom run tp @s ~.1 ~.1 ~
execute if entity @s[tag=East,scores={timer=17..}] if block ~.5 ~ ~ #ocarina_of_time:shabom if block ~.5 ~ ~.4 #ocarina_of_time:shabom if block ~.5 ~ ~-.4 #ocarina_of_time:shabom run tp @s ~.1 ~-.1 ~

#West
execute if entity @s[tag=West] run scoreboard players add @s timer 1
execute if entity @s[tag=West,scores={timer=1..}] run data modify entity @s Rotation[0] set value 90f
execute if entity @s[tag=West,scores={timer=2}] run function ocarina_of_time:enemies/shabom/shabom_2
execute if entity @s[tag=West,scores={timer=3..16}] if block ~-.5 ~ ~ #ocarina_of_time:shabom if block ~-.5 ~ ~.4 #ocarina_of_time:shabom if block ~-.5 ~ ~-.4 #ocarina_of_time:shabom run tp @s ~-.1 ~.1 ~
execute if entity @s[tag=West,scores={timer=17..}] if block ~-.5 ~ ~ #ocarina_of_time:shabom if block ~-.5 ~ ~.4 #ocarina_of_time:shabom if block ~-.5 ~ ~-.4 #ocarina_of_time:shabom run tp @s ~-.1 ~-.1 ~

#Up
execute unless block ~ ~ ~ #ocarina_of_time:shabom run scoreboard players set @s timer 2
execute unless block ~ ~ ~ #ocarina_of_time:shabom run tp @s ~ ~.1 ~
execute unless block ^ ^ ^.5 #ocarina_of_time:shabom run scoreboard players set @s timer 2
execute unless block ^ ^ ^.5 #ocarina_of_time:shabom run tp @s ~ ~.1 ~
execute unless block ^-.4 ^ ^.5 #ocarina_of_time:shabom run scoreboard players set @s timer 2
execute unless block ^-.4 ^ ^.5 #ocarina_of_time:shabom run tp @s ~ ~.1 ~
execute unless block ^.4 ^ ^.5 #ocarina_of_time:shabom run scoreboard players set @s timer 2
execute unless block ^.4 ^ ^.5 #ocarina_of_time:shabom run tp @s ~ ~.1 ~

#Down
execute unless block ~ ~1 ~ #ocarina_of_time:shabom run scoreboard players set @s timer 17
execute unless block ~ ~1 ~ #ocarina_of_time:shabom run tp @s ~ ~-.1 ~

#Protect
execute unless block ~ ~.2 ~.4 #ocarina_of_time:shabom run data merge entity @s {Invulnerable:1b}
execute unless block ~ ~.2 ~-.4 #ocarina_of_time:shabom run data merge entity @s {Invulnerable:1b}
execute unless block ~.4 ~.2 ~ #ocarina_of_time:shabom run data merge entity @s {Invulnerable:1b}
execute unless block ~-.4 ~.2 ~ #ocarina_of_time:shabom run data merge entity @s {Invulnerable:1b}
execute if blocks ~-.5 ~.2 ~-.5 ~.5 ~.2 ~.5 902 90 -625 all run data merge entity @s {Invulnerable:0b}

#Hurt
execute if entity @a[distance=..0.9] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @a[distance=..0.9] run playsound minecraft:entity.item.pickup hostile @a ~ ~ ~ 1 1.5
execute if entity @a[distance=..0.9] run kill @s
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.item.pickup hostile @a ~ ~ ~ 1 1.5
execute if entity @s[nbt={HurtTime:10s}] run kill @s
execute if entity @s[tag=Kill] run playsound minecraft:entity.item.pickup hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=Kill] run kill @s

#Sounds
execute if entity @s[scores={timer=5}] run playsound minecraft:entity.item.pickup hostile @a ~ ~ ~ .5 .6

#Escape
execute if entity @s[y=4,dy=0] run tag @s add Kill

#Fail Safe
execute if entity @s[scores={timer=0,lifetime=2..}] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=5..}] run tag @s add Attack2
execute if entity @s[scores={timer=1..}] run scoreboard players set @s GameTimer 0
