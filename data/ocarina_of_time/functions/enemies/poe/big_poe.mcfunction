scoreboard players add @s lifetime 1
execute unless entity @s[tag=Die] run scoreboard players add @s timer 1

#Zombie
tp @e[type=zombie,tag=BigPoe,sort=nearest,limit=1] @s

execute unless entity @s[tag=Die] if entity @s[scores={lifetime=1}] run data merge entity @e[type=horse,tag=Epona,limit=1] {Attributes:[{Name:"generic.movement_speed",Base:0.3f},{Base:.9,Name:"horse.jump_strength"}]}
execute unless entity @s[tag=Die] if entity @s[scores={lifetime=1..2}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute unless entity @s[tag=Die] if entity @s[scores={lifetime=3}] at @a rotated ~ 0 positioned ^ ^ ^9 facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute unless entity @s[tag=Die] if entity @s[scores={lifetime=3}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:79}}]}
execute unless entity @s[tag=Die] unless entity @s[tag=Disappear] if entity @s[scores={lifetime=4..}] if block ~ ~ ~ #ocarina_of_time:bombchu facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^-.6 ~ 0

#Vanish
execute unless entity @s[scores={lifetime=1..2}] unless entity @s[tag=Die] unless block ~ ~ ~ #ocarina_of_time:bombchu run tp @s ~ ~1 ~
execute unless entity @s[scores={lifetime=1..2}] unless entity @s[tag=Die] unless block ~ ~1 ~ #ocarina_of_time:bombchu run tag @e[type=zombie,tag=BigPoe,sort=nearest,limit=1] add Resist
execute unless entity @s[scores={lifetime=1..2}] unless entity @s[tag=Die] unless block ~ ~1 ~ #ocarina_of_time:bombchu run tag @s add Disappear
execute unless entity @s[tag=Die] if entity @s[tag=Disappear] unless entity @s[scores={timer=100..}] run scoreboard players set @s timer 100
execute unless entity @s[tag=Die] if entity @s[scores={timer=119}] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute unless entity @s[tag=Die] if entity @s[scores={timer=100..220}] run tp @s ~ ~ ~ ~40 ~
execute unless entity @s[tag=Die] if entity @s[scores={timer=121}] as @e[type=zombie,tag=BigPoe,sort=nearest,limit=1] at @s run tp @s ~ ~-10 ~
execute unless entity @s[tag=Die] if entity @s[scores={timer=121}] run kill @e[type=zombie,tag=BigPoe,sort=nearest,limit=1]
execute unless entity @s[tag=Die] if entity @s[scores={timer=121}] run kill @s

#Kill
execute unless entity @s[tag=Die] unless entity @e[type=zombie,tag=BigPoe,sort=nearest,limit=1,distance=..3] run data merge entity @e[type=horse,tag=Epona,limit=1] {Attributes:[{Name:"generic.movement_speed",Base:0.3f},{Base:.9,Name:"horse.jump_strength"}]}
execute unless entity @s[tag=Die] unless entity @e[type=zombie,tag=BigPoe,sort=nearest,limit=1,distance=..3] run scoreboard players set @s timer 0
execute unless entity @s[tag=Die] unless entity @e[type=zombie,tag=BigPoe,sort=nearest,limit=1,distance=..3] run tag @s add Die

execute if entity @e[type=zombie,tag=BigPoe,nbt={HurtTime:10s}] run scoreboard players add @s GameTimer 1
execute if entity @e[type=zombie,tag=BigPoe,nbt={HurtTime:10s}] run playsound minecraft:entity.witch.death hostile @a ~ ~ ~ 1 2

execute if entity @s[scores={GameTimer=2..}] run kill @e[type=zombie,tag=BigPoe,sort=nearest,limit=1]
execute if entity @s[scores={GameTimer=2..}] run scoreboard players set @s GameTimer 0
