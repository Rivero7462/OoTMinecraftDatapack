#Rotation
data modify entity @s Rotation[1] set value 0f

#Cooldown
execute if entity @s[tag=Cooldown] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=10..}] run tag @s remove Cooldown
execute if entity @s[scores={lifetime=10..}] run scoreboard players reset @s lifetime

#Cooldown 2
execute if entity @s[tag=Cooldown2] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run tp @s ~ ~ ~ ~180 0
execute if entity @s[scores={GameTimer=21..}] run tag @s remove Cooldown2
execute if entity @s[scores={GameTimer=21..}] run scoreboard players set @s GameTimer 0

#Directions
execute if entity @s[scores={BlueRupee=0}] run tag @s remove Reverse
execute if entity @s[scores={BlueRupee=1}] run tag @s add Reverse
execute if entity @s[scores={BlueRupee=2..}] run scoreboard players set @s BlueRupee 0

#Change Directions
execute if entity @s[tag=Run] unless entity @s[scores={time=1..40}] unless entity @e[type=area_effect_cloud,tag=FlarePoint,distance=..0.2] unless entity @s[tag=Cooldown] unless entity @s[tag=Cooldown2] unless entity @s[scores={time=1..29}] at @s anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.8] at @s run playsound minecraft:entity.illusioner.hurt hostile @a ~ ~ ~ 1 1.7
execute if entity @s[tag=Run] unless entity @s[scores={time=1..40}] unless entity @e[type=area_effect_cloud,tag=FlarePoint,distance=..0.2] unless entity @s[tag=Cooldown] unless entity @s[tag=Cooldown2] unless entity @s[scores={time=1..29}] at @s anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.8] at @s unless entity @s[tag=Reverse] run scoreboard players add @s timer 1
execute if entity @s[tag=Run] unless entity @s[scores={time=1..40}] unless entity @e[type=area_effect_cloud,tag=FlarePoint,distance=..0.2] unless entity @s[tag=Cooldown] unless entity @s[tag=Cooldown2] unless entity @s[scores={time=1..29}] at @s anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.8] at @s if entity @s[tag=Reverse] run scoreboard players remove @s timer 1
execute if entity @s[tag=Run] unless entity @s[scores={time=1..40}] unless entity @e[type=area_effect_cloud,tag=FlarePoint,distance=..0.2] unless entity @s[tag=Cooldown] unless entity @s[tag=Cooldown2] unless entity @s[scores={time=1..29}] at @s anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.8] at @s run scoreboard players add @s BlueRupee 1
execute if entity @s[tag=Run] unless entity @s[scores={time=1..40}] unless entity @e[type=area_effect_cloud,tag=FlarePoint,distance=..0.2] unless entity @s[tag=Cooldown] unless entity @s[tag=Cooldown2] unless entity @s[scores={time=1..29}] at @s anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.8] at @s run tag @s add Cooldown2

#Moving
execute unless entity @s[tag=Reverse] if entity @e[type=area_effect_cloud,tag=FlarePoint,distance=..0.2] unless entity @s[tag=Cooldown] run scoreboard players remove @s timer 1
execute unless entity @s[tag=Reverse] if entity @e[type=area_effect_cloud,tag=FlarePoint,distance=..0.2] run tag @s add Cooldown
execute if entity @s[tag=Reverse] if entity @e[type=area_effect_cloud,tag=FlarePoint,distance=..0.2] unless entity @s[tag=Cooldown] run scoreboard players add @s timer 1
execute if entity @s[tag=Reverse] if entity @e[type=area_effect_cloud,tag=FlarePoint,distance=..0.2] run tag @s add Cooldown

execute if entity @s[scores={timer=9..}] run scoreboard players set @s timer 1
execute if entity @s[scores={timer=..0}] run scoreboard players set @s timer 8

execute unless entity @s[tag=Cooldown2] if entity @s[scores={time=7..399}] if entity @s[scores={timer=1}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint1,limit=1]
execute unless entity @s[tag=Cooldown2] if entity @s[scores={time=7..399}] if entity @s[scores={timer=2}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint2,limit=1]
execute unless entity @s[tag=Cooldown2] if entity @s[scores={time=7..399}] if entity @s[scores={timer=3}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint3,limit=1]
execute unless entity @s[tag=Cooldown2] if entity @s[scores={time=7..399}] if entity @s[scores={timer=4}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint4,limit=1]
execute unless entity @s[tag=Cooldown2] if entity @s[scores={time=7..399}] if entity @s[scores={timer=5}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint5,limit=1]
execute unless entity @s[tag=Cooldown2] if entity @s[scores={time=7..399}] if entity @s[scores={timer=6}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint6,limit=1]
execute unless entity @s[tag=Cooldown2] if entity @s[scores={time=7..399}] if entity @s[scores={timer=7}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint7,limit=1]
execute unless entity @s[tag=Cooldown2] if entity @s[scores={time=7..399}] if entity @s[scores={timer=8}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint8,limit=1]

#Run
execute unless entity @s[tag=Run] run scoreboard players set @s time 0
execute if entity @s[tag=Run] run scoreboard players add @s time 1
execute if entity @s[tag=FlareDancer1] unless entity @s[tag=Run] run tp @s 3001 102 1960
execute if entity @s[tag=FlareDancer2] unless entity @s[tag=Run] run tp @s 3064 34 1915

#Direction
execute if entity @s[scores={time=1}] at @e[type=wither_skeleton,tag=FlareDancer] run tp @s ~ ~2 ~ facing entity @p
execute if entity @s[scores={time=1}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={time=2}] run scoreboard players operation @s timer = @e[type=area_effect_cloud,tag=FlarePoint,tag=!FlarePoint9,limit=1,sort=nearest] timer
execute if entity @s[scores={time=5}] run playsound minecraft:entity.illusioner.hurt hostile @a ~ ~ ~ 1 1.7
execute if entity @s[scores={time=2..10}] run tp @s ^ ^ ^.3 facing entity @p
execute if entity @s[scores={time=11..28}] if block ~ ~-.1 ~ minecraft:air run tp @s ~ ~-.1 ~
execute if entity @s[scores={time=29}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={time=400}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={time=400..420}] run tp @s ^ ^ ^.5 facing entity @e[type=area_effect_cloud,tag=FlarePoint9,limit=1]
execute if entity @s[scores={time=421..440}] run tp @s ~ ~-.2 ~
execute if entity @s[tag=FlareDancer1,scores={time=441}] run tp @s 3001 102 1960
execute if entity @s[tag=FlareDancer2,scores={time=441}] run tp @s 3064 34 1915
execute if entity @s[scores={time=441..}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={time=441..}] run tag @e[type=wither_skeleton,tag=FlareDancer] remove Headless
execute if entity @s[scores={time=441..}] run tag @s remove Run
execute if entity @s[scores={time=441..}] run scoreboard players set @s time 0

#Health
execute store result score @s ArrowCount run data get entity @s Health

execute if entity @s[scores={time=7..399}] if entity @s[scores={ArrowCount=..40}] unless entity @s[tag=Stage1] run scoreboard players set @s time 400
execute if entity @s[scores={ArrowCount=..40}] run tag @s add Stage1
execute if entity @s[scores={time=7..399}] if entity @s[scores={ArrowCount=..20}] unless entity @s[tag=Stage2] run scoreboard players set @s time 400
execute if entity @s[scores={ArrowCount=..20}] run tag @s add Stage2

#Sounds
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.illusioner.death hostile @a ~ ~ ~ 1 1.7
