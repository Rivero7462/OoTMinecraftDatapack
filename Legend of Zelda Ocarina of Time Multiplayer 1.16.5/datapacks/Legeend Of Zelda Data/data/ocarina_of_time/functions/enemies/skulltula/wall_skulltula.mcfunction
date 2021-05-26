#Rotation
execute unless entity @s[tag=Attack] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..30}] run tp @s ~ ~ ~ ~ ~-3
execute if entity @s[scores={timer=45..55}] run tp @s ~ ~ ~ ~ ~3
execute if entity @s[scores={timer=70..110}] run tp @s ~ ~ ~ ~ ~3
execute if entity @s[scores={timer=125..140}] run tp @s ~ ~ ~ ~ ~-3
execute if entity @s[scores={timer=155..180}] run tp @s ~ ~ ~ ~ ~3
execute if entity @s[scores={timer=195..240}] run tp @s ~ ~ ~ ~ ~-3
execute if entity @s[scores={timer=255..270}] run tp @s ~ ~ ~ ~ ~-3
execute if entity @s[scores={timer=285..345}] run tp @s ~ ~ ~ ~ ~3
execute if entity @s[scores={timer=360..390}] run tp @s ~ ~ ~ ~ ~-3
execute if entity @s[scores={timer=405}] run scoreboard players set @s timer 0

#Attack
execute if entity @a[scores={SkulltulaClimb=1..}] anchored eyes positioned ^ ^-2 ^ anchored feet if entity @a[distance=..1.5] unless entity @s[scores={timer=0}] run tag @s add Attack
execute if entity @s[tag=Attack] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Attack] run scoreboard players set @s timer 0

execute if entity @s[scores={lifetime=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["WallSkullReset"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if block ^ ^-.5 ^ #ocarina_of_time:wall_skulltula if entity @s[scores={lifetime=3..20}] run tp @s ^ ^-.3 ^

#Push Off
execute if entity @a[distance=..1.2] unless entity @s[scores={lifetime=35..}] run scoreboard players set @s lifetime 35
execute if entity @a[distance=..1.2] run effect give @a minecraft:wither 1 1 true
execute if entity @a[distance=..1.2] run tp @a ^-1.2 ^ ^

#Arrow
execute if entity @e[type=arrow,distance=..1.5] run kill @s

#Stop
execute if entity @s[scores={lifetime=42..}] at @e[type=area_effect_cloud,tag=WallSkullReset,sort=nearest,limit=1] run tp @s ~ ~ ~
execute if entity @s[scores={lifetime=42..}] run kill @e[type=area_effect_cloud,tag=WallSkullReset,sort=nearest,limit=1]
execute if entity @s[scores={lifetime=42..}] run tag @s remove Attack
execute if entity @s[scores={lifetime=42..}] run scoreboard players set @s lifetime 0

#Climbing
execute if entity @a[scores={SkulltulaClimb=0}] if entity @s[tag=Attack] unless entity @s[scores={lifetime=42..}] run scoreboard players set @s lifetime 42
execute if entity @a[scores={SkulltulaClimb=1..}] run scoreboard players set @a SkulltulaClimb 0

#Slingshot
execute if entity @e[type=snowball,distance=..2] run tag @s add Damage
execute if entity @s[tag=Damage] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={GameTimer=1}] run effect give @s minecraft:resistance 1 1 true
execute if entity @s[scores={GameTimer=1}] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={GameTimer=1}] run playsound minecraft:entity.bat.takeoff hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={GameTimer=2..}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={GameTimer=2..}] run tag @s remove Damage
execute if entity @s[scores={GameTimer=2..}] run scoreboard players set @s GameTimer 0
