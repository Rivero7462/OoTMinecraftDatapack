scoreboard players add @s lifetime 1
scoreboard players add @s timer 1

#Zombie
tp @e[type=zombie,tag=SmallBigPoe,sort=nearest,limit=1] @s

execute if entity @s[scores={lifetime=1..4}] at @a rotated ~ 0 positioned ^ ^ ^5 facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={lifetime=3}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:80}}]}
execute unless entity @s[tag=Disappear] if entity @s[scores={lifetime=5..}] run tp @s ^ ^ ^ ~-3 ~
execute unless entity @s[tag=Disappear] if entity @s[scores={lifetime=5..}] positioned as @p run tp @s ^ ^ ^-4.9
execute if entity @s[scores={lifetime=70..}] run scoreboard players set @s lifetime 5

#Vanish
execute unless block ~ ~1 ~ #ocarina_of_time:bombchu run tag @e[type=zombie,tag=SmallBigPoe,sort=nearest,limit=1] add Resist
execute unless block ~ ~1 ~ #ocarina_of_time:bombchu run tag @s add Disappear
execute if entity @s[tag=Disappear] unless entity @s[scores={timer=500..}] run scoreboard players set @s timer 500
execute if entity @s[scores={timer=519}] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute if entity @s[scores={timer=500..520}] run tp @s ~ ~ ~ ~40 ~
execute if entity @s[scores={timer=521}] as @e[type=zombie,tag=SmallBigPoe,sort=nearest,limit=1] at @s run tp @s ~ ~-5 ~
execute if entity @s[scores={timer=521}] run kill @e[type=zombie,tag=SmallBigPoe,sort=nearest,limit=1]
execute if entity @s[scores={timer=521}] run kill @s

#Fire
execute unless entity @s[tag=Disappear] if entity @s[scores={lifetime=10}] run summon minecraft:silverfish ^ ^1 ^1 {Tags:["TinyFire","Red","TinyFire1","Invisible"],Rotation:[0f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}

#Kill
execute unless entity @e[type=zombie,tag=SmallBigPoe,sort=nearest,limit=1,distance=..3] run tag @s add Die
execute unless entity @e[type=zombie,tag=SmallBigPoe,sort=nearest,limit=1,distance=..3] run tag @s add Poe
execute unless entity @e[type=zombie,tag=SmallBigPoe,sort=nearest,limit=1,distance=..3] run scoreboard players set @s timer 0
execute unless entity @e[type=zombie,tag=SmallBigPoe,sort=nearest,limit=1,distance=..3] run tag @s remove SmallBigPoe

execute if entity @e[type=zombie,tag=SmallBigPoe,nbt={HurtTime:10s}] run playsound minecraft:entity.witch.death hostile @a ~ ~ ~ 1 2
