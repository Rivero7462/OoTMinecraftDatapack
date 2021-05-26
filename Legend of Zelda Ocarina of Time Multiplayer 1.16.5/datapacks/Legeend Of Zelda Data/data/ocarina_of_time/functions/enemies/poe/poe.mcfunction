execute if block ~ ~-1 ~ minecraft:player_head run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:air
execute unless entity @s[scores={lifetime=101..140}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] as @e[type=armor_stand,tag=Poe] at @s run tp @s ~ ~ ~

#Scores
scoreboard players add @s timer 1
scoreboard players add @s lifetime 1
scoreboard players add @s[tag=Hide] HoverTimer 1

#Float
execute if entity @s[scores={timer=1}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=81..}] run tp @s ~ ~-.2 ~
execute if entity @s[scores={timer=5}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=81..}] run tp @s ~ ~-.2 ~
execute if entity @s[scores={timer=9}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=81..}] run tp @s ~ ~.2 ~
execute if entity @s[scores={timer=12}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=81..}] run tp @s ~ ~.2 ~
execute if entity @s[scores={timer=15..}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=81..}] run scoreboard players set @s timer 0

#Walls
execute as @e[type=zombie,tag=Poe] at @s unless block ~ ~1 ~.3 minecraft:air run data merge entity @s {Invulnerable:1b}
execute as @e[type=zombie,tag=Poe] at @s unless block ~ ~1 ~-.3 minecraft:air run data merge entity @s {Invulnerable:1b}
execute as @e[type=zombie,tag=Poe] at @s unless block ~.3 ~1 ~ minecraft:air run data merge entity @s {Invulnerable:1b}
execute as @e[type=zombie,tag=Poe] at @s unless block ~-.3 ~1 ~ minecraft:air run data merge entity @s {Invulnerable:1b}
execute as @e[type=zombie,tag=Poe] at @s if blocks ~-.4 ~1 ~-.4 ~.4 ~1 ~.4 902 90 -625 all unless entity @s[scores={HoverTimer=1..}] run data merge entity @s {Invulnerable:0b}

#Too Far
execute unless entity @a[distance=..13] run tp @s ^ ^ ^1 facing entity @p

#Attack
execute if entity @s[scores={lifetime=82}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute if entity @s[scores={lifetime=82}] run data modify entity @s Pos[1] set from entity @p Pos[1]
execute if entity @s[scores={lifetime=81..140}] run particle minecraft:sneeze ~ ~1 ~ 0 0 0 0 1 normal
execute if entity @s[scores={lifetime=101..140}] as @e[type=armor_stand,tag=Poe,distance=..1] at @s run tp @s ^ ^ ^.3
execute if entity @s[scores={lifetime=141}] run scoreboard players set @s lifetime 0

#Hurt
execute if entity @s[nbt={HurtTime:10s}] at @a run tag @s add Hide

#Slingshot
execute unless entity @s[tag=Hide] if entity @e[type=snowball,distance=..2] run effect give @s minecraft:resistance 1 1 true
execute unless entity @s[tag=Hide] if entity @e[type=snowball,distance=..2] run effect give @s minecraft:instant_health 1 0 true

#Invisible mode
execute if entity @s[scores={HoverTimer=1..160}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={HoverTimer=1}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={HoverTimer=1}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute if entity @s[scores={HoverTimer=1..20}] run function ocarina_of_time:enemies/poe/poe_2
execute if entity @s[scores={HoverTimer=10}] run data merge entity @e[type=armor_stand,tag=Poe,distance=..1,limit=1] {HandDropChances:[0f,0f,0f,0f],ArmorItems:[{},{},{},{}],HandItems:[{id:player_head,Count:1b,tag:{display:{Name:"\"Lantern\""},SkullOwner:{Id:[I;-949775320,-1155119473,-2078684134,823382637],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWFmZDM1ZTMyOWRlZTk4MWNkZDYzNmVlZjVmNWViN2FiN2NhOTM5YjAzOGEyMWNiMWFkMDRlZjgwMjcxNzA0ZCJ9fX0="}]}}}},{}]}
execute if entity @s[scores={HoverTimer=160}] run data merge entity @e[type=armor_stand,tag=Poe,distance=..1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:18}}],HandItems:[{},{}]}

execute if entity @s[scores={HoverTimer=150}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute if entity @s[scores={HoverTimer=150..170}] run function ocarina_of_time:enemies/poe/poe_2
execute if entity @s[scores={HoverTimer=170}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={HoverTimer=170}] run tag @s remove Hide
execute if entity @s[scores={HoverTimer=170}] run scoreboard players set @s HoverTimer 0

#Sounds
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.witch.hurt hostile @a ~ ~ ~ 1 2
