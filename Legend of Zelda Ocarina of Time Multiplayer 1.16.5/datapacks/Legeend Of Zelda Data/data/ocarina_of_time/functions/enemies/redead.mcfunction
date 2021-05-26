execute unless entity @s[team=Redead] run team join Redead @s

#Scores
execute unless entity @s[tag=Stun] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] unless entity @s[tag=Scared] run scoreboard players add @s timer 1
execute if entity @s[tag=Scared] unless entity @s[tag=Stun] unless entity @s[tag=Attack] run scoreboard players add @s timer 1
execute if entity @s[tag=Scared,tag=Attack] unless entity @s[tag=Stun] run scoreboard players add @s timer 1
execute if entity @s[tag=Eat] run scoreboard players add @s SlingshotDamage 1
execute if entity @s[tag=Stun] run scoreboard players add @s time 1

#Speed
effect give @s minecraft:slowness 1000000 3 true

#Seen
execute if entity @a[distance=..1] run tag @s add Attack
execute if entity @a[distance=..5] unless entity @a[scores={Navi=1..}] run tag @s add Attack
execute unless entity @s[tag=Stun] if entity @s[tag=Attack,nbt={NoAI:1b}] run data merge entity @s {NoAI:0b}

#Leave
execute unless entity @a[distance=..5] run data merge entity @s {NoAI:1b}
execute unless entity @a[distance=..5] run tag @s remove Attack
execute unless entity @a[distance=..5] unless entity @s[tag=Scared] run scoreboard players set @s timer 0
execute if entity @a[distance=..200] unless entity @s[tag=Attack] if block ~ ~-.5 ~ minecraft:air run tp @s ~ ~-.5 ~
execute if entity @a[distance=..200] unless entity @s[tag=Attack] unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:polished_granite_slab unless block ~ ~ ~ minecraft:cobblestone_slab run tp @s ~ ~.5 ~

#Scared
execute unless entity @a[scores={ResetHealth=1..}] unless entity @a[tag=InDeathTown] unless entity @s[tag=Stun] unless entity @s[tag=Eat] if entity @s[scores={timer=10}] run tag @s add Scared
execute unless entity @a[scores={ResetHealth=1..}] unless entity @a[tag=InDeathTown] unless entity @s[tag=Stun] unless entity @s[tag=Eat] if entity @s[scores={timer=10}] run function ocarina_of_time:items/ocarina/ocarina_3
execute unless entity @a[scores={ResetHealth=1..}] unless entity @a[tag=InDeathTown] unless entity @s[tag=Stun] unless entity @s[tag=Eat] at @a if entity @s[scores={timer=10}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Scared"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @a[scores={ResetHealth=1..}] unless entity @a[tag=InDeathTown] unless entity @s[tag=Stun] unless entity @s[tag=Eat] if entity @s[scores={timer=10..20}] run effect give @a minecraft:levitation 1 255 true
execute unless entity @a[scores={ResetHealth=1..}] unless entity @a[tag=InDeathTown] unless entity @s[tag=Stun] unless entity @s[tag=Eat] if entity @s[scores={timer=10..20}] run effect give @a minecraft:slowness 1 1 true
execute unless entity @a[scores={ResetHealth=1..}] unless entity @a[tag=InDeathTown] unless entity @s[tag=Stun] unless entity @s[tag=Eat] at @e[type=area_effect_cloud,tag=Scared] if entity @s[scores={timer=10..40}] run tp @a ~ ~ ~
execute unless entity @a[scores={ResetHealth=1..}] unless entity @a[tag=InDeathTown] unless entity @s[tag=Stun] unless entity @s[tag=Eat] if entity @s[scores={timer=10..40}] run data merge entity @s {Invulnerable:1b}
execute unless entity @a[scores={ResetHealth=1..}] unless entity @a[tag=InDeathTown] unless entity @s[tag=Stun] unless entity @s[tag=Eat] if entity @s[scores={timer=40}] run data merge entity @s {Invulnerable:0b}
execute unless entity @a[scores={ResetHealth=1..}] unless entity @a[tag=InDeathTown] unless entity @s[tag=Stun] unless entity @s[tag=Eat] if entity @s[scores={timer=81}] run kill @e[type=area_effect_cloud,tag=Scared]
execute unless entity @a[scores={ResetHealth=1..}] unless entity @a[tag=InDeathTown] unless entity @s[tag=Stun] unless entity @s[tag=Eat] if entity @s[scores={timer=81}] run tag @s remove Scared
execute unless entity @a[scores={ResetHealth=1..}] unless entity @a[tag=InDeathTown] unless entity @s[tag=Stun] unless entity @s[tag=Eat] if entity @s[scores={timer=81..}] run scoreboard players set @s timer 0
execute if entity @a[scores={ResetHealth=1..}] run kill @e[type=area_effect_cloud,tag=Scared]
execute if entity @a[scores={ResetHealth=1..}] run tag @s remove Scared

#Attack
execute unless entity @s[tag=Stun] if entity @s[scores={timer=10..}] if entity @a[distance=..2] run tag @s add Eat
execute unless entity @s[tag=Stun] unless entity @a[distance=..2] run tag @s remove Eat
execute unless entity @s[tag=Stun] if entity @s[scores={SlingshotDamage=1..}] run data merge entity @s {Invulnerable:1b}
execute unless entity @s[tag=Stun] at @a if entity @s[scores={SlingshotDamage=1..10}] unless block ~ ~-.1 ~ minecraft:air if block ~ ~2 ~ minecraft:air run fill ~ ~2 ~ ~ ~2 ~ minecraft:barrier
execute unless entity @s[tag=Stun] at @a if entity @s[scores={SlingshotDamage=1..}] rotated ~ 0 run tp @s ^ ^.5 ^-.3 ~ 60
execute unless entity @s[tag=Stun] if entity @s[scores={SlingshotDamage=1}] run effect clear @a minecraft:slowness
execute unless entity @s[tag=Stun] if entity @s[scores={SlingshotDamage=1}] run effect clear @a minecraft:levitation
execute unless entity @s[tag=Stun] if entity @s[scores={SlingshotDamage=1..}] if entity @s[tag=Eat] run scoreboard players set @s timer -10
execute unless entity @s[tag=Stun] if entity @s[scores={SlingshotDamage=1..}] if block ~ ~2 ~ minecraft:barrier unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 1 true
execute unless entity @s[tag=Stun] if entity @s[scores={SlingshotDamage=2..}] run effect give @a minecraft:slowness 100000 255 true

execute at @a if entity @s[scores={SlingshotDamage=20}] unless entity @e[type=area_effect_cloud,tag=Progress,tag=RedeadHelp] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Run and Jump "},{"text":"to get away from its grasp, ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":"!","color":"aqua"}]
execute at @a if entity @s[scores={SlingshotDamage=20}] run tag @e[type=area_effect_cloud,tag=Progress] add RedeadHelp

execute at @a if entity @s[scores={SlingshotDamage=11..}] unless block ~ ~2 ~ minecraft:barrier run fill ~-5 ~1 ~-5 ~5 ~2 ~5 minecraft:air replace minecraft:barrier
execute at @a if entity @s[scores={SlingshotDamage=11..}] unless block ~ ~2 ~ minecraft:barrier run data merge entity @s {Invulnerable:0b}
execute at @a if entity @s[scores={SlingshotDamage=11..}] unless block ~ ~2 ~ minecraft:barrier run effect clear @a minecraft:slowness
execute at @a if entity @s[scores={SlingshotDamage=11..}] unless block ~ ~2 ~ minecraft:barrier run tag @s remove Eat
execute at @a if entity @s[scores={SlingshotDamage=11..}] unless block ~ ~2 ~ minecraft:barrier run scoreboard players set @s SlingshotDamage 0

#Stun
execute if entity @a[distance=..15,nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] run tag @s add Stun
execute if entity @s[scores={time=1}] run playsound minecraft:block.end_gateway.spawn hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=1..200}] run data merge entity @s {NoAI:1b,Invulnerable:0b}
execute if entity @s[scores={time=1..200}] run particle minecraft:falling_dust blue_wool ~ ~2 ~ .1 .3 .3 1 1
execute if entity @s[scores={time=201..}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={time=201..}] run tag @s remove Stun
execute if entity @s[scores={time=201..}] run scoreboard players set @s time 0
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players set @s time 201

#Sounds
execute unless entity @s[tag=Stun] unless entity @s[tag=Eat] if entity @s[scores={lifetime=10}] run playsound minecraft:entity.zombie_pigman.death hostile @a ~ ~ ~ .5 .7
execute unless entity @s[tag=Stun] unless entity @s[tag=Eat] if entity @s[scores={lifetime=71..}] run scoreboard players set @s lifetime 0
execute unless entity @s[tag=Eat] at @a if entity @s[scores={timer=10}] run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1 2
execute unless entity @s[tag=Eat] at @a if entity @s[scores={timer=10}] run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=Eat] if entity @a[nbt={HurtTime:10s}] run playsound minecraft:entity.zombie_pigman.angry hostile @a ~ ~ ~ 1 .6
