scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={timer=2..}] unless entity @a[tag=ReflectFire] unless entity @e[type=armor_stand,tag=TwinrovaBody] if block ^ ^ ^.4 minecraft:air run tp @s ^ ^ ^.4
execute if entity @s[scores={timer=2..200}] unless entity @a[tag=ReflectFire] if entity @e[type=armor_stand,tag=TwinrovaBody] if block ^ ^ ^.4 minecraft:air run tp @s ^ ^ ^.5
execute if entity @s[scores={timer=2..200}] unless entity @a[tag=PartIce] unless entity @s[tag=Boom] unless entity @a[tag=ReflectFire] if entity @e[type=armor_stand,tag=TwinrovaBody] if entity @a[distance=..1.5] as @a at @s anchored eyes facing entity @e[type=armor_stand,tag=TwinrovaBody] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1] run tag @s add ReflectFire
execute if entity @s[scores={timer=2..200}] unless entity @a[tag=ReflectIce] unless entity @a[tag=ReflectFire] unless block ^ ^ ^.4 minecraft:air run tag @s add Boom
execute if entity @s[scores={timer=2..200}] if entity @a[tag=PartIce] if entity @a[distance=..1.5] unless entity @s[tag=Boom] run scoreboard players set @e[type=armor_stand,tag=TwinrovaBody] GameTimer 81
execute if entity @s[scores={timer=2..200}] if entity @a[tag=PartIce] if entity @a[distance=..1.5] run tag @s add Boom
execute if entity @a[tag=ReflectFire] unless entity @s[scores={timer=200..}] run scoreboard players set @s timer 200
execute if entity @a[tag=ReflectFire] if entity @e[type=armor_stand,tag=TwinrovaBody] unless entity @s[scores={timer=250..}] run scoreboard players set @s timer 250
execute if entity @s[scores={timer=250..}] run scoreboard players set @e[type=zombie,tag=Kotake] timer 300
execute if entity @s[scores={timer=250..}] run scoreboard players set @e[type=zombie,tag=Koume] timer 300
execute if entity @s[scores={timer=250..}] run kill @s

execute if entity @s[tag=Boom] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] at @a run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={lifetime=1}] run tag @e[type=zombie,tag=Kotake] remove Hover
execute if entity @s[scores={lifetime=1}] run scoreboard players set @e[type=zombie,tag=Kotake] timer 0
execute if entity @s[scores={lifetime=1}] unless entity @a[tag=ReflectFire] if entity @a[distance=..2] run effect give @a minecraft:resistance 1 0 true
execute if entity @s[scores={lifetime=1}] unless entity @a[tag=ReflectFire] if entity @a[distance=..2] run effect give @a minecraft:instant_damage 1 0 true
execute if entity @s[scores={lifetime=70}] run scoreboard players set @e[type=armor_stand,tag=TwinrovaBody] timer 500
execute if entity @s[scores={lifetime=1..100}] unless entity @a[tag=ReflectFire] run particle minecraft:flame ~ ~ ~ 1.5 .1 1.5 0 10 normal
execute if entity @s[scores={lifetime=1..100}] unless entity @a[tag=ReflectFire] if entity @a[distance=..4] run effect give @a minecraft:poison 1 10 true
execute unless entity @s[tag=GetHit] unless entity @e[type=armor_stand,tag=TwinrovaBody] if entity @s[scores={lifetime=1..100}] unless entity @a[tag=ReflectFire] if entity @a[distance=..4] at @a run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.5
execute unless entity @s[tag=GetHit] if entity @e[type=armor_stand,tag=TwinrovaBody] if entity @s[scores={lifetime=1..100}] unless entity @a[tag=ReflectFire] if entity @a[distance=..4] at @a run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.5
execute unless entity @s[tag=GetHit] if entity @e[type=armor_stand,tag=TwinrovaBody] if entity @s[scores={lifetime=1..100}] unless entity @a[tag=ReflectFire] if entity @a[distance=..4] run scoreboard players set @e[type=armor_stand,tag=TwinrovaBody] GameTimer 81
execute if entity @s[scores={lifetime=1..100}] unless entity @a[tag=ReflectFire] if entity @a[distance=..4] run tag @s add GetHit
execute if entity @s[scores={lifetime=101}] run scoreboard players set @e[type=zombie,tag=Koume] timer 300
execute if entity @s[scores={lifetime=101..}] run kill @s
