#Scores
execute unless entity @s[tag=Stun] run scoreboard players add @s timer 1
execute if entity @s[tag=Attack2] unless entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[tag=Stun] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Attack3] run scoreboard players add @s HoverTimer 1

#Rotation
data modify entity @s Rotation[1] set value 0f

#Panic
execute unless entity @s[tag=Grow] unless entity @s[tag=Attack] unless entity @s[tag=Attack2] if entity @s[scores={timer=1..}] if block ~ ~-.2 ~ minecraft:air run tp @s ~ ~-.1 ~
execute unless entity @s[tag=Grow] unless entity @s[tag=Attack] unless entity @s[tag=Attack2] if entity @s[scores={timer=5..}] unless block ~ ~-.2 ~ minecraft:air if block ^ ^ ^.5 minecraft:air if block ^.2 ^ ^ minecraft:air if block ^-.2 ^ ^ minecraft:air run tp @s ^ ^ ^.1 ~ 0
execute unless entity @s[tag=Grow] unless entity @s[tag=Attack] unless entity @s[tag=Attack2] if entity @s[scores={timer=5..}] unless block ~ ~-.2 ~ minecraft:air unless block ^ ^ ^.4 minecraft:air unless entity @a[distance=4..5] run tag @s add Turn
execute unless entity @s[tag=Grow] unless entity @s[tag=Attack] unless entity @s[tag=Attack2] if entity @s[scores={timer=5..}] unless block ~ ~-.2 ~ minecraft:air unless block ^ ^ ^.4 minecraft:air if entity @a[distance=4..5] run tag @s add Attack
execute if entity @s[tag=Turn] run tag @s remove Attack
execute if entity @s[tag=Turn] run tp @s ~ ~ ~ ~160 0
execute if entity @s[tag=Turn] run scoreboard players set @s timer 0
execute if entity @s[tag=Turn] run tag @s remove Turn

#Attack
execute if entity @s[tag=Attack] facing entity @a feet rotated ~ 0 unless entity @a[distance=..1.5] unless block ^ ^ ^.3 minecraft:air run tag @s add Turn
execute if entity @s[tag=Attack] facing entity @a feet rotated ~ 0 unless entity @a[distance=..1.5] if block ^ ^ ^.3 minecraft:air run tp @s ^ ^ ^.1 ~ 0
execute if entity @s[tag=Attack] facing entity @a feet rotated ~ 0 if entity @a[distance=..1.5] run tag @s add Attack2

execute if entity @s[tag=Attack2] run tag @s remove Attack
execute if entity @s[tag=Attack2,scores={time=1..6}] run tp @s ^ ^.2 ^.3
execute if entity @s[tag=Attack2,scores={time=1..6}] if entity @a[distance=..1] run tag @s add Attack3
execute if entity @s[tag=Attack2,scores={time=7..}] if block ~ ~-.2 ~ minecraft:air run tp @s ~ ~-.1 ~
execute if entity @s[tag=Attack2,scores={time=7..}] unless block ~ ~-.2 ~ minecraft:air run tag @s remove Attack2
execute if entity @s[scores={time=7..}] unless block ~ ~-.2 ~ minecraft:air run scoreboard players set @s timer 0
execute if entity @s[scores={time=7..}] unless block ~ ~-.2 ~ minecraft:air run scoreboard players set @s time 0

#Stun
execute if entity @s[scores={lifetime=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1 ~ .3 .3 .3 1 1
execute if entity @s[scores={lifetime=111..}] run tag @s remove Stun
execute if entity @s[scores={lifetime=111..}] run scoreboard players set @s lifetime 0

#Suck
execute if entity @s[tag=Attack3] run tag @s remove Attack2
execute if entity @s[tag=Attack3] run scoreboard players set @s time 0
execute if entity @s[scores={HoverTimer=1}] unless entity @e[type=area_effect_cloud,tag=TinymasterTeleport] at @a run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["TinymasterTeleport"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={HoverTimer=1..80}] at @e[type=area_effect_cloud,tag=TinymasterTeleport] run tp @p ~ ~ ~
execute if entity @s[scores={HoverTimer=1..80}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={HoverTimer=1..80}] run particle minecraft:dust 0 1 0 1 ~ ~.5 ~ 0.3 0.3 0.3 1 1
execute if entity @s[scores={HoverTimer=1..80}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={HoverTimer=1..80}] at @a run tp @s ~ ~2 ~
execute if entity @s[scores={HoverTimer=81}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={HoverTimer=81}] if block ^ ^ ^-1 minecraft:air run tp @s ^ ^ ^-1
execute if entity @s[scores={HoverTimer=81}] store result score @s CuccoCount run execute if entity @e[type=zombie,tag=Tinymaster]
execute if entity @s[scores={HoverTimer=81}] run scoreboard players set @s timer 0
execute if entity @s[scores={HoverTimer=81,CuccoCount=1}] run tag @s add Grow
execute if entity @s[scores={HoverTimer=81}] run tag @s remove Attack3
execute if entity @s[scores={HoverTimer=81}] run scoreboard players set @s HoverTimer 0

#Grow
execute if entity @s[tag=Grow] if entity @s[scores={timer=1..20}] if block ~ ~-.2 ~ minecraft:air run tp @s ~ ~-.1 ~
execute if entity @s[tag=Grow] if entity @s[scores={timer=21..}] run summon minecraft:zombie ~ ~ ~ {Tags:["FloorMasterSpecial","Floormaster","Invisible","Fire"],PersistenceRequired:1b,Rotation:[-90f],ArmorItems:[{},{},{},{id:black_glazed_terracotta,Count:1b}],DeathLootTable:"ocarina_of_time:entities/floormaster",Health:30,Attributes:[{Name:"generic.max_health",Base:30},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Grow] if entity @s[scores={timer=21..}] run kill @s

#Sounds
execute unless entity @s[tag=Grow] unless entity @s[tag=Attack] unless entity @s[tag=Attack2] if entity @s[scores={timer=1}] run playsound minecraft:block.scaffolding.hit hostile @a ~ ~ ~ .2 1.4
execute unless entity @s[tag=Grow] unless entity @s[tag=Attack] unless entity @s[tag=Attack2] if entity @s[scores={timer=7}] run playsound minecraft:block.scaffolding.hit hostile @a ~ ~ ~ .2 1.4
execute unless entity @s[tag=Grow] unless entity @s[tag=Attack] unless entity @s[tag=Attack2] if entity @s[scores={timer=14}] run playsound minecraft:block.scaffolding.hit hostile @a ~ ~ ~ .2 1.4
execute unless entity @s[tag=Grow] unless entity @s[tag=Attack] unless entity @s[tag=Attack2] if entity @s[scores={timer=21}] run playsound minecraft:block.scaffolding.hit hostile @a ~ ~ ~ .2 1.4
execute unless entity @s[tag=Grow] unless entity @s[tag=Attack] unless entity @s[tag=Attack2] if entity @s[scores={timer=28}] run playsound minecraft:block.scaffolding.hit hostile @a ~ ~ ~ .2 1.4
execute unless entity @s[tag=Grow] unless entity @s[tag=Attack] unless entity @s[tag=Attack2] if entity @s[scores={timer=35}] run playsound minecraft:block.scaffolding.hit hostile @a ~ ~ ~ .2 1.4
execute unless entity @s[tag=Grow] unless entity @s[tag=Attack] unless entity @s[tag=Attack2] if entity @s[scores={timer=42}] run playsound minecraft:block.scaffolding.hit hostile @a ~ ~ ~ .2 1.4
execute unless entity @s[tag=Grow] unless entity @s[tag=Attack] unless entity @s[tag=Attack2] if entity @s[scores={timer=49}] run playsound minecraft:block.scaffolding.hit hostile @a ~ ~ ~ .2 1.4
execute if entity @s[scores={HoverTimer=1}] at @a run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={HoverTimer=15}] at @a run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={HoverTimer=30}] at @a run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={HoverTimer=45}] at @a run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={HoverTimer=60}] at @a run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={HoverTimer=75}] at @a run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 1.5

#Din's Fire?
