tp @e[type=zombie,tag=Sharp] @s

#Scores
scoreboard players add @s timer 1
scoreboard players add @s lifetime 1
execute if entity @s[tag=Hide] run scoreboard players add @s HoverTimer 1

#Float
execute unless entity @s[tag=Die] if entity @s[scores={timer=1}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=81..}] facing entity @p feet rotated ~ 0 run tp @s ~ ~-.2 ~ ~ 0
execute unless entity @s[tag=Die] if entity @s[scores={timer=5}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=81..}] facing entity @p feet rotated ~ 0 run tp @s ~ ~-.2 ~ ~ 0
execute unless entity @s[tag=Die] if entity @s[scores={timer=9}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=81..}] facing entity @p feet rotated ~ 0 run tp @s ~ ~.2 ~ ~ 0
execute unless entity @s[tag=Die] if entity @s[scores={timer=12}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=81..}] facing entity @p feet rotated ~ 0 run tp @s ~ ~.2 ~ ~ 0
execute unless entity @s[tag=Die] if entity @s[scores={timer=15..}] run scoreboard players set @s timer 0
execute unless entity @s[tag=Die] if entity @s[scores={lifetime=81..}] run scoreboard players set @s timer 0

#Walls
execute unless entity @s[tag=Die] as @e[type=zombie,tag=Sharp] at @s unless block ~ ~1 ~.3 minecraft:air run data merge entity @s {Invulnerable:1b}
execute unless entity @s[tag=Die] as @e[type=zombie,tag=Sharp] at @s unless block ~ ~1 ~-.3 minecraft:air run data merge entity @s {Invulnerable:1b}
execute unless entity @s[tag=Die] as @e[type=zombie,tag=Sharp] at @s unless block ~.3 ~1 ~ minecraft:air run data merge entity @s {Invulnerable:1b}
execute unless entity @s[tag=Die] as @e[type=zombie,tag=Sharp] at @s unless block ~-.3 ~1 ~ minecraft:air run data merge entity @s {Invulnerable:1b}
execute unless entity @s[tag=Die] as @e[type=zombie,tag=Sharp] at @s if blocks ~-.4 ~1 ~-.4 ~.4 ~1 ~.4 902 90 -625 all unless entity @s[scores={HoverTimer=1..}] run data merge entity @s {Invulnerable:0b}

#Too Far
execute unless entity @s[tag=Die] unless entity @a[distance=..13] run tp @s ^ ^ ^1 facing entity @p

#Attack
execute unless entity @s[tag=Die] if entity @s[scores={lifetime=82}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute unless entity @s[tag=Die] if entity @s[scores={lifetime=82}] run data modify entity @s Pos[1] set from entity @p Pos[1]
execute unless entity @s[tag=Die] if entity @s[scores={lifetime=83}] run tp @s ~ ~1 ~
execute unless entity @s[tag=Die] if entity @s[scores={lifetime=81..140}] run particle minecraft:sneeze ~ ~1 ~ 0 0 0 0 1 normal
execute unless entity @s[tag=Die] if entity @s[scores={lifetime=101..140}] run tp @s ^ ^ ^.3
execute unless entity @s[tag=Die] if entity @s[scores={lifetime=141..}] run scoreboard players set @s lifetime 0

#Hurt
execute unless entity @s[tag=Die] if entity @e[type=zombie,tag=Sharp,nbt={HurtTime:10s}] run tag @s add Hide

#Slingshot
execute unless entity @s[tag=Die] if entity @e[type=snowball,distance=..2] run effect give @s minecraft:wither 2 2 true

#Invisible mode
execute unless entity @s[tag=Die] if entity @s[scores={HoverTimer=1..160}] run data merge entity @s {Invulnerable:1b}
execute unless entity @s[tag=Die] if entity @s[scores={HoverTimer=1}] run scoreboard players set @s lifetime 0
execute unless entity @s[tag=Die] if entity @s[scores={HoverTimer=1}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute unless entity @s[tag=Die] if entity @s[scores={HoverTimer=1..20}] run tp @s ~ ~ ~ ~40 ~

execute unless entity @s[tag=Die] if entity @s[scores={HoverTimer=10}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:83}}],HandItems:[{},{}]}
execute unless entity @s[tag=Die] if entity @s[scores={HoverTimer=160}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:81}}],HandItems:[{},{}]}

execute unless entity @s[tag=Die] if entity @s[scores={HoverTimer=150}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute unless entity @s[tag=Die] if entity @s[scores={HoverTimer=150..170}] run tp @s ~ ~ ~ ~40 ~
execute unless entity @s[tag=Die] if entity @s[scores={HoverTimer=170}] run data merge entity @s {Invulnerable:0b}
execute unless entity @s[tag=Die] if entity @s[scores={HoverTimer=170}] run tag @s remove Hide
execute unless entity @s[tag=Die] if entity @s[scores={HoverTimer=170..}] run scoreboard players set @s HoverTimer 0

#Kill
execute unless entity @e[type=zombie,tag=Sharp] if entity @s[tag=!Die] run scoreboard players set @s timer 0
execute unless entity @e[type=zombie,tag=Sharp] if entity @s[tag=!Die] run tag @s add Die

#Sounds
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.witch.hurt hostile @a ~ ~ ~ 1 2
