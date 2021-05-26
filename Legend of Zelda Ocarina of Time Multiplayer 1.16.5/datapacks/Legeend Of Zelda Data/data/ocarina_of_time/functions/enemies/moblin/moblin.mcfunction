#Scores
execute if entity @s[tag=Attack] run scoreboard players add @s timer 1

#Directions
function ocarina_of_time:enemies/moblin/direction
execute if entity @s[scores={timer=218}] run tag @s remove Attack
execute if entity @s[scores={timer=218}] run scoreboard players set @s timer 0
#West
execute if entity @s[tag=West] positioned ~-1 ~1 ~-.5 if entity @a[dx=-8,dz=0] at @a unless block ~ ~ ~ minecraft:water unless block ~ ~-1 ~ minecraft:water unless entity @s[scores={timer=1..218}] run tag @s add Attack
execute if entity @s[tag=West,scores={timer=10..}] positioned ~-1 ~1 ~-.5 if entity @a[dx=-1,dz=0] unless entity @s[scores={timer=200..218}] run tp @a ~ ~-1 ~.5
execute if entity @s[tag=West,scores={timer=10..200}] run tp @s ~-.3 ~ ~
execute if entity @s[tag=West,scores={timer=10..200}] unless block ~-2 ~-1 ~ minecraft:grass_block unless block ~-4 ~-1 ~ minecraft:water unless entity @s[scores={timer=200..}] run scoreboard players set @s timer 200
execute if entity @s[tag=West,scores={timer=200..209}] run tp @s ~.35 ~ ~

execute unless entity @s[tag=Attack] if entity @s[tag=West] positioned ~1 ~1 ~-.5 if entity @a[dx=1,dz=0] unless entity @s[scores={timer=200..218}] run tp @s ~-1 ~-1 ~.5 -90 ~

#East
execute if entity @s[tag=East] positioned ~-1 ~1 ~-.5 if entity @a[dx=8,dz=0] at @a unless block ~ ~ ~ minecraft:water unless block ~ ~-1 ~ minecraft:water run tag @s add Attack
execute if entity @s[tag=East,scores={timer=10..}] positioned ~1 ~1 ~-.5 if entity @a[dx=-1,dz=0] unless entity @s[scores={timer=200..218}] run tp @a ~ ~-1 ~.5
execute if entity @s[tag=East,scores={timer=10..200}] run tp @s ~.3 ~ ~
execute if entity @s[tag=East,scores={timer=10..200}] unless block ~2 ~-1 ~ minecraft:grass_block unless block ~4 ~-1 ~ minecraft:water unless entity @s[scores={timer=200..}] run scoreboard players set @s timer 200
execute if entity @s[tag=East,scores={timer=200..209}] run tp @s ~-.35 ~ ~

execute unless entity @s[tag=Attack] if entity @s[tag=East] positioned ~-1 ~1 ~-.5 if entity @a[dx=-2,dz=0] unless entity @s[scores={timer=200..218}] run tp @s ~1 ~-1 ~.5 90 ~

#South
execute if entity @s[tag=South] positioned ~-.5 ~1 ~-1 if entity @a[dx=0,dz=8] at @a unless block ~ ~ ~ minecraft:water unless block ~ ~-1 ~ minecraft:water run tag @s add Attack
execute if entity @s[tag=South,scores={timer=10..}] positioned ~-.5 ~1 ~1 if entity @a[dx=0,dz=-1] unless entity @s[scores={timer=200..218}] run tp @a ~.5 ~-1 ~
execute if entity @s[tag=South,scores={timer=10..200}] run tp @s ~ ~ ~.3
execute if entity @s[tag=South,scores={timer=10..200}] unless entity @s[tag=Moblin5] unless block ~ ~-1 ~2 minecraft:grass_block unless block ~ ~-1 ~4 minecraft:water unless entity @s[scores={timer=200..}] run scoreboard players set @s timer 200
execute if entity @s[tag=Moblin5,tag=South,scores={timer=10..200}] unless block ~ ~-1 ~2 minecraft:grass_block unless entity @s[scores={timer=200..}] run scoreboard players set @s timer 200
execute if entity @s[tag=South,scores={timer=200..209}] run tp @s ~ ~ ~-.35

execute unless entity @s[tag=Attack] if entity @s[tag=South] positioned ~-.5 ~1 ~-1 if entity @a[dx=0,dz=-2] unless entity @s[scores={timer=200..218}] run tp @s ~.5 ~-1 ~1 180 ~

#North
execute if entity @s[tag=North] positioned ~-.5 ~1 ~-1 if entity @a[dx=0,dz=-8] at @a unless block ~ ~ ~ minecraft:water unless block ~ ~-1 ~ minecraft:water run tag @s add Attack
execute if entity @s[tag=North,scores={timer=10..}] positioned ~-.5 ~1 ~-1 if entity @a[dx=0,dz=-1] unless entity @s[scores={timer=200..218}] run tp @a ~.5 ~-1 ~
execute if entity @s[tag=North,scores={timer=10..200}] run tp @s ~ ~ ~-.3
execute if entity @s[tag=North,scores={timer=10..200}] unless block ~ ~-1 ~-2 minecraft:grass_block unless block ~ ~-1 ~-4 minecraft:water unless entity @s[scores={timer=200..}] run scoreboard players set @s timer 200
execute if entity @s[tag=North,scores={timer=200..209}] run tp @s ~ ~ ~.35

execute unless entity @s[tag=Attack] if entity @s[tag=North] positioned ~-.5 ~1 ~1 if entity @a[dx=0,dz=1] unless entity @s[scores={timer=200..218}] run tp @s ~.5 ~-1 ~-1 0 ~

#Invulnerable
execute if entity @s[tag=Attack] run data merge entity @s {Invulnerable:1b}
execute unless entity @s[tag=Attack] run data merge entity @s {Invulnerable:0b}

#Hurt
execute if entity @s[tag=West,scores={timer=10..}] positioned ~-1 ~1 ~-.5 if entity @a[dx=-1,dz=0] unless entity @s[scores={timer=200..218}] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=East,scores={timer=10..}] positioned ~1 ~1 ~-.5 if entity @a[dx=-1,dz=0] unless entity @s[scores={timer=200..218}] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=South,scores={timer=10..}] positioned ~-.5 ~1 ~1 if entity @a[dx=0,dz=-1] unless entity @s[scores={timer=200..218}] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=North,scores={timer=10..}] positioned ~-.5 ~1 ~-1 if entity @a[dx=0,dz=-1] unless entity @s[scores={timer=200..218}] run scoreboard players add @s GameTimer 1

execute if entity @s[tag=West,scores={timer=10..}] positioned ~-1 ~1 ~-.5 if entity @a[dx=-1,dz=0] unless entity @s[scores={timer=200..218}] if entity @s[scores={GameTimer=1}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[tag=East,scores={timer=10..}] positioned ~1 ~1 ~-.5 if entity @a[dx=-1,dz=0] unless entity @s[scores={timer=200..218}] if entity @s[scores={GameTimer=1}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[tag=South,scores={timer=10..}] positioned ~-.5 ~1 ~1 if entity @a[dx=0,dz=-1] unless entity @s[scores={timer=200..218}] if entity @s[scores={GameTimer=1}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[tag=North,scores={timer=10..}] positioned ~-.5 ~1 ~-1 if entity @a[dx=0,dz=-1] unless entity @s[scores={timer=200..218}] if entity @s[scores={GameTimer=1}] run effect give @a minecraft:wither 2 0 true

execute if entity @s[scores={timer=1}] run scoreboard players set @s GameTimer 0

#Kill
execute if entity @s[nbt={HurtTime:10s}] if entity @a[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b}}] run tag @s add Kill

execute if entity @s[tag=Kill] run playsound minecraft:entity.cat.death hostile @a ~ ~ ~ 1 .5
execute if entity @s[tag=Kill] run kill @s

#Sounds
execute if entity @s[scores={timer=1}] run playsound minecraft:block.iron_door.close hostile @a ~ ~ ~ 1 1.3
execute if entity @s[scores={timer=10}] run playsound minecraft:entity.ravager.death hostile @a ~ ~ ~ 1 1.5
