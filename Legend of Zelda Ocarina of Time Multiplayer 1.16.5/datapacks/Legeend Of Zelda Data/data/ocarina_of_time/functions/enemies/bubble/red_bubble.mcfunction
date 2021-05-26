#Scores
execute if entity @s[tag=Attack] unless entity @s[tag=Ground] run scoreboard players add @s lifetime 1
execute run scoreboard players add @s ArrowCount 1
execute if entity @s[tag=Ground] run scoreboard players add @s timer 1

#Particle
execute if entity @s[tag=Attack] unless entity @s[tag=Ground] run particle entity_effect ~ ~.2 ~ 1 0 0 1 0 force @a

#Rotation
data modify entity @s Rotation[1] set value 0f
execute if entity @s[scores={ArrowCount=360..}] run scoreboard players set @s ArrowCount 0
execute if entity @a[distance=..200] unless entity @s[tag=Ground] unless entity @s[scores={lifetime=6..101}] if block ~ ~-.5 ~ #ocarina_of_time:red_bubble store result entity @s Rotation[0] float 1 run scoreboard players get @s time

#Rebound
execute rotated ~ 0 if entity @a[distance=..200] unless entity @s[tag=Ground] unless block ^ ^ ^.5 #ocarina_of_time:red_bubble run tp @s ~ ~ ~ ~180 ~

#Jumping
execute rotated ~ 0 if entity @a[distance=..200] unless entity @s[tag=Ground] if block ^ ^ ^.5 #ocarina_of_time:red_bubble if entity @s[scores={lifetime=11..16}] run tp @s ^ ^.2 ^.2 ~ ~
execute rotated ~ 0 if entity @a[distance=..200] unless entity @s[tag=Ground] if block ^ ^ ^.5 #ocarina_of_time:red_bubble if entity @s[scores={lifetime=17..18}] run tp @s ^ ^ ^.2 ~ ~
execute rotated ~ 0 if entity @a[distance=..200] unless entity @s[tag=Ground] if block ^ ^ ^.5 #ocarina_of_time:red_bubble if entity @s[scores={lifetime=19..26}] run tp @s ^ ^-.2 ^.2 ~ ~
execute rotated ~ 0 if entity @a[distance=..200] unless entity @s[tag=Ground] if block ^ ^ ^.5 #ocarina_of_time:red_bubble if entity @s[scores={lifetime=27..31}] run tp @s ^ ^-.2 ^.1 ~ ~
execute rotated ~ 0 if entity @a[distance=..200] unless entity @s[tag=Ground] if block ^ ^ ^.5 #ocarina_of_time:red_bubble if entity @s[scores={lifetime=32}] run scoreboard players set @s lifetime 27
execute if entity @s[scores={lifetime=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["RedBubbleReturn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={lifetime=2}] run tp @s ~ ~2 ~
execute if entity @s[scores={lifetime=3..10}] run tp @s ^ ^.4 ^.2

#Reset
execute if entity @s[scores={lifetime=251..}] run tp @s @e[type=area_effect_cloud,tag=RedBubbleReturn,limit=1,sort=nearest]
execute if entity @s[scores={lifetime=251..}] run kill @e[type=area_effect_cloud,tag=RedBubbleReturn,limit=1,sort=nearest,distance=..1]
execute unless entity @s[tag=Attack] run scoreboard players set @s lifetime 0

#Land
execute unless entity @s[tag=Ground] if entity @s[scores={lifetime=6..101}] unless block ~ ~-.5 ~ #ocarina_of_time:red_bubble run scoreboard players set @s lifetime 11
execute unless entity @s[tag=Ground] if entity @s[scores={lifetime=6..101}] unless block ~ ~-.5 ~ #ocarina_of_time:red_bubble store result entity @s Rotation[0] float 1 run scoreboard players get @s ArrowCount

#Magma
execute if entity @s[scores={lifetime=6..}] if block ~ ~-.5 ~ minecraft:netherrack run scoreboard players set @s lifetime 201
execute if entity @s[scores={lifetime=6..}] if block ~ ~-.5 ~ minecraft:black_wool run scoreboard players set @s lifetime 201
execute if entity @s[scores={lifetime=21..}] if block ~ ~ ~ minecraft:lava run scoreboard players set @s lifetime 201
execute if entity @s[scores={lifetime=201}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={lifetime=201}] run tp @s ~ ~-3 ~
execute if entity @s[scores={lifetime=201}] run effect clear @s minecraft:slow_falling
execute if entity @s[scores={lifetime=201}] run tag @s remove Ground
execute if entity @s[scores={lifetime=201}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=251..}] run tag @s remove Attack
execute if entity @s[scores={lifetime=251..}] run scoreboard players set @s lifetime 0

#Shield
execute unless entity @s[tag=Ground] positioned ~ ~-1 ~ if entity @a[distance=..0.6] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:wither 2 0 true
execute unless entity @s[tag=Ground] positioned ~ ~-1 ~ if entity @a[distance=..0.6] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] at @a run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Ground] positioned ~ ~-1 ~ if entity @a[distance=..0.6] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] at @a run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Ground] positioned ~ ~-1 ~ if entity @a[distance=..0.6] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run tag @s add Ground
execute unless entity @s[tag=Ground] positioned ~ ~-1 ~ if entity @a[distance=..0.6] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run tag @s add Ground

#Ground
execute if entity @s[nbt={HurtTime:10s}] run tag @s add Ground
execute rotated ~ 0 if entity @s[tag=Ground,scores={timer=1..200}] unless block ^ ^1 ^1 #ocarina_of_time:red_bubble run tp @s ~ ~ ~ ~150 ~
execute rotated ~ 0 if entity @s[tag=Ground,scores={timer=1..200}] unless block ~ ~-.01 ~ #ocarina_of_time:red_bubble if block ^ ^1 ^1 #ocarina_of_time:red_bubble run tp @s ^ ^.6 ^.1
execute rotated ~ 0 if entity @s[tag=Ground,scores={timer=1..200}] if block ~ ~-.01 ~ #ocarina_of_time:red_bubble if block ^ ^1 ^1 #ocarina_of_time:red_bubble run tp @s ^ ^-.2 ^.1
execute if entity @s[tag=Ground,scores={timer=201..}] run effect clear @s minecraft:slow_falling
execute if entity @s[tag=Ground,scores={timer=201..}] run tp @s ~ ~.7 ~
execute if entity @s[tag=Ground,scores={timer=201..}] run tag @s remove Ground

#Sound
execute unless entity @s[tag=Ground] if entity @s[scores={lifetime=1..31}] unless entity @s[scores={lifetime=2..4}] unless entity @s[scores={lifetime=6..8}] unless entity @s[scores={lifetime=10..12}] unless entity @s[scores={lifetime=14..16}] unless entity @s[scores={lifetime=18..20}] unless entity @s[scores={lifetime=22..24}] unless entity @s[scores={lifetime=26..28}] unless entity @s[scores={lifetime=30..31}] run playsound minecraft:enchant.thorns.hit hostile @a ~ ~ ~ .5 .8
execute rotated ~ 0 if entity @s[tag=Ground,scores={timer=1..200}] unless block ~ ~-.01 ~ #ocarina_of_time:red_bubble if block ^ ^1 ^1 #ocarina_of_time:red_bubble run playsound minecraft:block.metal.hit hostile @a ~ ~ ~ 1 .8
