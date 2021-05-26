#Flare Points
scoreboard players set @e[type=area_effect_cloud,tag=FlarePoint1] timer 1
scoreboard players set @e[type=area_effect_cloud,tag=FlarePoint2] timer 2
scoreboard players set @e[type=area_effect_cloud,tag=FlarePoint3] timer 3
scoreboard players set @e[type=area_effect_cloud,tag=FlarePoint4] timer 4
scoreboard players set @e[type=area_effect_cloud,tag=FlarePoint5] timer 5
scoreboard players set @e[type=area_effect_cloud,tag=FlarePoint6] timer 6
scoreboard players set @e[type=area_effect_cloud,tag=FlarePoint7] timer 7
scoreboard players set @e[type=area_effect_cloud,tag=FlarePoint8] timer 8

#Red
execute if entity @e[type=zombie,tag=FlareDancer,scores={ArrowCount=41..60}] run data merge entity @s {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Flare Dancer\""},SkullOwner:{Id:[I;-34294515,-992194605,-1634452727,-754449062],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljY2Q5MjdkZjAyYjlhNWZkMTYxODMyMDg3N2NhZGZmNDI3YTg1M2QzYjdmMTg2MzVkNGZjZTdlYjVmYmY3OSJ9fX0="}]}}}}]}
execute if entity @e[type=zombie,tag=FlareDancer,scores={ArrowCount=41..60}] run particle minecraft:flame ~ ~1.2 ~ .3 .7 .3 0 2 normal
execute if entity @e[type=zombie,tag=FlareDancer,scores={ArrowCount=41..60}] run particle minecraft:flame ~ ~3 ~ .2 .2 .2 0 1 normal

#Blue
execute if entity @e[type=zombie,tag=FlareDancer,scores={ArrowCount=21..40}] run data merge entity @s {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:63487}}},{id:"leather_leggings",Count:1b,tag:{display:{color:63487}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:63487}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Flare Dancer\""},SkullOwner:{Id:[I;-34294515,-992194605,-1634452727,-754449062],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljY2Q5MjdkZjAyYjlhNWZkMTYxODMyMDg3N2NhZGZmNDI3YTg1M2QzYjdmMTg2MzVkNGZjZTdlYjVmYmY3OSJ9fX0="}]}}}}]}
execute if entity @e[type=zombie,tag=FlareDancer,scores={ArrowCount=21..40}] run particle minecraft:soul_fire_flame ~ ~3 ~ .2 .2 .2 0 1 normal
execute if entity @e[type=zombie,tag=FlareDancer,scores={ArrowCount=21..40}] run particle minecraft:soul_fire_flame ~ ~3 ~ .2 .2 .2 0 1 normal

#Green
execute if entity @e[type=zombie,tag=FlareDancer,scores={ArrowCount=0..20}] run data merge entity @s {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:65313}}},{id:"leather_leggings",Count:1b,tag:{display:{color:65313}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:65313}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Flare Dancer\""},SkullOwner:{Id:[I;-34294515,-992194605,-1634452727,-754449062],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljY2Q5MjdkZjAyYjlhNWZkMTYxODMyMDg3N2NhZGZmNDI3YTg1M2QzYjdmMTg2MzVkNGZjZTdlYjVmYmY3OSJ9fX0="}]}}}}]}
execute if entity @e[type=zombie,tag=FlareDancer,scores={ArrowCount=0..20}] run particle minecraft:entity_effect ~ ~2.7 ~ 0 1 0.1 1 0 normal
execute if entity @e[type=zombie,tag=FlareDancer,scores={ArrowCount=0..20}] run particle minecraft:entity_effect ~ ~1 ~ 0 1 0.1 1 0 normal
execute if entity @e[type=zombie,tag=FlareDancer,scores={ArrowCount=0..20}] run particle minecraft:entity_effect ~ ~ ~ 0 1 0.1 1 0 normal

#CoolDown
execute if entity @s[tag=Cooldown] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=10..}] run tag @s remove Cooldown
execute if entity @s[scores={lifetime=10..}] run scoreboard players reset @s lifetime

#Running
execute unless entity @s[tag=Cooldown] unless entity @s[tag=Spin] if entity @e[type=area_effect_cloud,tag=FlarePoint,distance=..0.2] run scoreboard players remove @s timer 1
execute if entity @e[type=area_effect_cloud,tag=FlarePoint,distance=..0.2] run tag @s add Cooldown
execute if entity @s[scores={timer=..0}] run scoreboard players set @s timer 8
execute unless entity @s[tag=Spin] unless entity @s[scores={GameTimer=1..}] if entity @s[scores={timer=1}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint1,limit=1]
execute unless entity @s[tag=Spin] unless entity @s[scores={GameTimer=1..}] if entity @s[scores={timer=2}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint2,limit=1]
execute unless entity @s[tag=Spin] unless entity @s[scores={GameTimer=1..}] if entity @s[scores={timer=3}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint3,limit=1]
execute unless entity @s[tag=Spin] unless entity @s[scores={GameTimer=1..}] if entity @s[scores={timer=4}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint4,limit=1]
execute unless entity @s[tag=Spin] unless entity @s[scores={GameTimer=1..}] if entity @s[scores={timer=5}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint5,limit=1]
execute unless entity @s[tag=Spin] unless entity @s[scores={GameTimer=1..}] if entity @s[scores={timer=6}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint6,limit=1]
execute unless entity @s[tag=Spin] unless entity @s[scores={GameTimer=1..}] if entity @s[scores={timer=7}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint7,limit=1]
execute unless entity @s[tag=Spin] unless entity @s[scores={GameTimer=1..}] if entity @s[scores={timer=8}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=FlarePoint8,limit=1]

#Cutscene
execute unless entity @s[tag=Headless] run scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 1 1.7
execute if entity @s[tag=FlareDancer1,scores={time=1}] run tp @s 3001 112 1960
execute if entity @s[tag=FlareDancer2,scores={time=1}] run tp @s 3064 44 1915
execute if entity @s[scores={time=30..44}] run tp @s ^ ^ ^.2
execute if entity @s[scores={time=45..52}] run tp @s ^ ^-.27 ^.4
execute if entity @s[scores={time=53}] run scoreboard players operation @s timer = @e[type=area_effect_cloud,tag=FlarePoint,tag=!FlarePoint9,limit=1,sort=nearest] timer
#Spinning
execute if entity @s[scores={time=54}] run tag @s add Spin
execute if entity @s[scores={time=54..179}] run tp @s ~ ~ ~ ~45 0
execute if entity @s[scores={time=180}] run tag @s remove Spin
execute if entity @s[scores={time=410..}] run scoreboard players set @s time 53

#Headless
execute unless entity @s[tag=Headless] run scoreboard players set @s GameTimer 0
execute if entity @s[tag=Headless] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run playsound minecraft:entity.illusioner.hurt hostile @a ~ ~ ~ 1 .7
execute if entity @s[scores={GameTimer=1}] run tag @e[type=zombie,tag=FlareDancer] add Run
execute if entity @s[scores={GameTimer=1..}] run scoreboard players set @s time 0
execute if entity @s[scores={GameTimer=2}] run tp @s ~ ~-5 ~
execute if entity @s[tag=FlareDancer1,scores={GameTimer=6}] run tp @s 3001 102 1960
execute if entity @s[tag=FlareDancer2,scores={GameTimer=6}] run tp @s 3064 34 1915

#Spin Sounds
execute if entity @s[scores={time=55}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=60}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=65}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=70}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=75}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=80}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=85}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=90}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=95}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=100}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=105}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=115}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=129}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=125}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=130}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=135}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=140}] run playsound minecraft:entity.silverfish.step hostile @a ~ ~ ~ 1 2

#Fire
execute if entity @s[scores={time=100}] unless entity @a[distance=..3] run summon minecraft:silverfish ~ ~1 ~ {Tags:["TinyFire","Red","TinyFire1","Invisible"],Rotation:[0f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
execute if entity @s[scores={time=100}] unless entity @a[distance=..3] run summon minecraft:silverfish ~ ~1 ~ {Tags:["TinyFire","Red","TinyFire2","Invisible"],Rotation:[180f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
execute if entity @s[scores={time=100}] unless entity @a[distance=..3] run summon minecraft:silverfish ~ ~1 ~ {Tags:["TinyFire","Red","TinyFire3","Invisible"],Rotation:[60f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
execute if entity @s[scores={time=100}] unless entity @a[distance=..3] run summon minecraft:silverfish ~ ~1 ~ {Tags:["TinyFire","Red","TinyFire4","Invisible"],Rotation:[120f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
execute if entity @s[scores={time=100}] unless entity @a[distance=..3] run summon minecraft:silverfish ~ ~1 ~ {Tags:["TinyFire","Red","TinyFire5","Invisible"],Rotation:[-60f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
execute if entity @s[scores={time=100}] unless entity @a[distance=..3] run summon minecraft:silverfish ~ ~1 ~ {Tags:["TinyFire","Red","TinyFire6","Invisible"],Rotation:[-120f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}

execute if entity @s[scores={time=100}] if entity @a[distance=..3] run summon minecraft:silverfish ~ ~1 ~ {Tags:["TinyFire","Blue","TinyFire1","Invisible"],Rotation:[0f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
execute if entity @s[scores={time=100}] if entity @a[distance=..3] run summon minecraft:silverfish ~ ~1 ~ {Tags:["TinyFire","Blue","TinyFire2","Invisible"],Rotation:[180f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
execute if entity @s[scores={time=100}] if entity @a[distance=..3] run summon minecraft:silverfish ~ ~1 ~ {Tags:["TinyFire","Blue","TinyFire3","Invisible"],Rotation:[60f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
execute if entity @s[scores={time=100}] if entity @a[distance=..3] run summon minecraft:silverfish ~ ~1 ~ {Tags:["TinyFire","Blue","TinyFire4","Invisible"],Rotation:[120f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
execute if entity @s[scores={time=100}] if entity @a[distance=..3] run summon minecraft:silverfish ~ ~1 ~ {Tags:["TinyFire","Blue","TinyFire5","Invisible"],Rotation:[-60f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
execute if entity @s[scores={time=100}] if entity @a[distance=..3] run summon minecraft:silverfish ~ ~1 ~ {Tags:["TinyFire","Blue","TinyFire6","Invisible"],Rotation:[-120f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}

#Hammer
execute if entity @a[nbt={SelectedItem:{tag:{Hammer:1b}}}] run data merge entity @s {Invulnerable:0b}
execute unless entity @a[nbt={SelectedItem:{tag:{Hammer:1b}}}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[nbt={HurtTime:10s}] run tag @s add Headless
