execute unless entity @s[scores={lifetime=101..140}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] as @e[type=armor_stand,tag=ForestPoe] at @s run tp @s ~ ~ ~

#Scores
scoreboard players add @s timer 1
scoreboard players add @s lifetime 1
scoreboard players add @s[tag=Hide] HoverTimer 1

#Float
execute if entity @s[scores={timer=1}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=81..}] if block ~ ~-.4 ~ minecraft:air run tp @s ~ ~-.2 ~
execute if entity @s[scores={timer=5}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=81..}] if block ~ ~-.4 ~ minecraft:air run tp @s ~ ~-.2 ~
execute if entity @s[scores={timer=9}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=81..}] if block ~ ~2 ~ minecraft:air run tp @s ~ ~.2 ~
execute if entity @s[scores={timer=12}] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=81..}] if block ~ ~2 ~ minecraft:air run tp @s ~ ~.2 ~
execute if entity @s[scores={timer=15..}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=81..}] run scoreboard players set @s timer 0

#Cutscene 1
execute if entity @s[tag=Joelle,scores={lifetime=1}] unless entity @s[tag=RedCutscene] run gamemode spectator @a
execute if entity @s[tag=Joelle,scores={lifetime=1}] unless entity @s[tag=RedCutscene] at @a run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["RedPoeCutscene"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[tag=Joelle,scores={lifetime=1..24}] unless entity @s[tag=RedCutscene] run tp @a 876 71 -1198 -135 30
execute if entity @s[tag=Joelle,scores={lifetime=25}] unless entity @s[tag=RedCutscene] run gamemode adventure @a
execute if entity @s[tag=Joelle,scores={lifetime=25}] unless entity @s[tag=RedCutscene] run tp @a @e[type=area_effect_cloud,tag=RedPoeCutscene,limit=1]
execute if entity @s[tag=Joelle,scores={lifetime=25}] unless entity @s[tag=RedCutscene] run kill @e[type=area_effect_cloud,tag=RedPoeCutscene]
execute if entity @s[tag=Joelle,scores={lifetime=25}] unless entity @s[tag=RedCutscene] run tag @s add RedCutscene

#Cutscene 2
execute if entity @s[tag=Beth,scores={lifetime=1}] unless entity @s[tag=BlueCutscene] run gamemode spectator @a
execute if entity @s[tag=Beth,scores={lifetime=1}] unless entity @s[tag=BlueCutscene] at @a run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["BluePoeCutscene"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[tag=Beth,scores={lifetime=1..24}] unless entity @s[tag=BlueCutscene] run tp @a 917 71 -1198 135 30
execute if entity @s[tag=Beth,scores={lifetime=25}] unless entity @s[tag=BlueCutscene] run gamemode adventure @a
execute if entity @s[tag=Beth,scores={lifetime=25}] unless entity @s[tag=BlueCutscene] run tp @a @e[type=area_effect_cloud,tag=BluePoeCutscene,limit=1]
execute if entity @s[tag=Beth,scores={lifetime=25}] unless entity @s[tag=BlueCutscene] run kill @e[type=area_effect_cloud,tag=BluePoeCutscene]
execute if entity @s[tag=Beth,scores={lifetime=25}] unless entity @s[tag=BlueCutscene] run tag @s add BlueCutscene

#Attack
execute if entity @s[scores={lifetime=81..140}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={lifetime=82}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute if entity @s[scores={lifetime=82..100}] if block ~ ~1 ~ minecraft:air positioned ~-10 ~2 ~-10 if entity @a[dx=20,dy=10,dz=20] at @s run tp @s ~ ~.1 ~
execute if entity @s[scores={lifetime=82..100}] if block ~ ~ ~ minecraft:air positioned ~-10 ~-8 ~-10 if entity @a[dx=20,dy=9,dz=20] at @s run tp @s ~ ~-.1 ~
execute if entity @s[scores={lifetime=81..140}] run particle minecraft:sneeze ~ ~1 ~ 0 0 0 0 1 normal
execute if entity @s[scores={lifetime=101..140}] as @e[type=armor_stand,tag=ForestPoe,distance=..1] at @s if block ^-.4 ^1 ^.5 minecraft:air if block ^.4 ^1 ^.5 minecraft:air if block ^ ^1 ^.5 minecraft:air run tp @s ^ ^ ^.3
execute if entity @s[scores={lifetime=141}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={lifetime=141}] run scoreboard players set @s lifetime 0

#Hurt
scoreboard objectives add ForestPoe minecraft.custom:minecraft.damage_dealt
execute if entity @a[scores={ForestPoe=1..}] at @a run tag @e[type=zombie,tag=ForestPoe,sort=nearest,limit=1] add Hide
execute if entity @a[scores={ForestPoe=1..}] run scoreboard players set @a ForestPoe 61
execute if entity @a[scores={ForestPoe=61..}] run scoreboard players set @a ForestPoe 0

#Invisible mode
execute if entity @s[scores={HoverTimer=1..160}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={HoverTimer=1}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={HoverTimer=1}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute if entity @s[scores={HoverTimer=1..20}] run function ocarina_of_time:enemies/poe/red_blue_poe_2
execute if entity @s[scores={HoverTimer=10}] run data merge entity @e[type=armor_stand,tag=ForestPoe,distance=..1,limit=1] {HandDropChances:[0f,0f,0f,0f],ArmorItems:[{},{},{},{}],HandItems:[{id:player_head,Count:1b,tag:{display:{Name:"\"Lantern\""},SkullOwner:{Id:[I;-949775320,-1155119473,-2078684134,823382637],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWFmZDM1ZTMyOWRlZTk4MWNkZDYzNmVlZjVmNWViN2FiN2NhOTM5YjAzOGEyMWNiMWFkMDRlZjgwMjcxNzA0ZCJ9fX0="}]}}}},{}]}
execute if entity @s[scores={HoverTimer=160}] run data merge entity @e[type=armor_stand,tag=Joelle,distance=..1,limit=1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:3}}],HandItems:[{},{}]}
execute if entity @s[scores={HoverTimer=160}] run data merge entity @e[type=armor_stand,tag=Beth,distance=..1,limit=1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:2}}],HandItems:[{},{}]}
execute if entity @s[scores={HoverTimer=160}] run data merge entity @e[type=armor_stand,tag=Amy,distance=..1,limit=1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}]}

execute if entity @s[scores={HoverTimer=150}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute if entity @s[scores={HoverTimer=150..170}] run function ocarina_of_time:enemies/poe/red_blue_poe_2
execute if entity @s[scores={HoverTimer=170}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={HoverTimer=170}] run tag @s remove Hide
execute if entity @s[scores={HoverTimer=170}] run scoreboard players set @s HoverTimer 0

#Sounds
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.witch.hurt hostile @a ~ ~ ~ 1 2
execute if entity @s[nbt={HurtTime:10s}] run tag @e[type=zombie,tag=ForestPoe,sort=nearest,limit=1] add Hide
