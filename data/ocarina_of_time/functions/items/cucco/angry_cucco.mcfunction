execute if entity @s[tag=Resist] run effect give @s minecraft:resistance 1 4 true

execute if entity @s[tag=Cucco,tag=!AngryCucco,tag=!Attack,tag=ThrowingCucco] run scoreboard players add @s timer 1
execute if entity @s[tag=Cucco,tag=!AngryCucco,tag=!Attack] unless entity @s[tag=ThrowingCucco] run scoreboard players set @s timer 0
execute if entity @s[tag=Cucco,tag=!AngryCucco,tag=!Attack] at @s unless entity @e[type=chicken,tag=HoldingCucco] unless entity @s[tag=NoCucco] if entity @a[distance=..1] unless entity @e[type=zombie,tag=Rock] unless block ~ ~ ~ minecraft:ladder unless block ~ ~ ~ minecraft:water run tag @s add HoldingCucco
execute if entity @s[tag=Cucco,tag=!AngryCucco,tag=!Attack,tag=HoldingCucco] at @a unless entity @e[type=zombie,tag=Rock] run function ocarina_of_time:items/cucco/cucco
execute if entity @s[tag=Cucco,tag=!AngryCucco,tag=!Attack] run data merge entity @s {EggLayTime:3000000}

#Angry
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s text 1
execute if entity @s[scores={text=3..}] run tag @s add Attack

execute if entity @s[tag=Attack] run scoreboard players add @s time 1
execute if entity @s[tag=Attack,scores={time=1}] run playsound minecraft:entity.chicken.hurt hostile @a ~ ~ ~ 1 .8
execute if entity @s[tag=Attack,scores={time=1}] run function ocarina_of_time:items/cucco/cucco_2
execute if entity @s[tag=Attack,scores={time=1}] run tag @s remove HoldingCucco

execute if entity @s[tag=Attack,scores={time=10}] at @a rotated ~ 0 run summon minecraft:chicken ^ ^ ^10 {PersistenceRequired:1b,NoAI:1b,Invulnerable:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AngryCucco","Type1"]}
execute if entity @s[tag=Attack,scores={time=20}] at @a rotated ~ 0 run summon minecraft:chicken ^10 ^ ^ {PersistenceRequired:1b,NoAI:1b,Invulnerable:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AngryCucco","Type2"]}
execute if entity @s[tag=Attack,scores={time=30}] at @a rotated ~ 0 run summon minecraft:chicken ^5 ^ ^5 {PersistenceRequired:1b,NoAI:1b,Invulnerable:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AngryCucco","Type1"]}
execute if entity @s[tag=Attack,scores={time=40}] at @a rotated ~ 0 run summon minecraft:chicken ^-5 ^ ^-5 {PersistenceRequired:1b,NoAI:1b,Invulnerable:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AngryCucco","Type2"]}
execute if entity @s[tag=Attack,scores={time=50}] at @a rotated ~ 0 run summon minecraft:chicken ^ ^ ^-10 {PersistenceRequired:1b,NoAI:1b,Invulnerable:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AngryCucco","Type1"]}
execute if entity @s[tag=Attack,scores={time=60}] at @a rotated ~ 0 run summon minecraft:chicken ^-10 ^ ^ {PersistenceRequired:1b,NoAI:1b,Invulnerable:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AngryCucco","Type2"]}
execute if entity @s[tag=Attack,scores={time=80..}] run scoreboard players set @s time 2

execute if entity @s[tag=AngryCucco] at @s run scoreboard players add @s lifetime 1
execute if entity @s[tag=AngryCucco,tag=Type1,scores={lifetime=1..500}] unless entity @a[distance=..2] facing entity @p feet run tp @s ^ ^ ^.3 ~ ~
execute if entity @s[tag=AngryCucco,tag=Type2,scores={lifetime=1..500}] unless entity @a[distance=..2] facing entity @p eyes run tp @s ^ ^ ^.3 ~ ~
execute if entity @s[tag=AngryCucco,scores={lifetime=1..500}] if entity @a[distance=..2] run scoreboard players set @s lifetime 501
execute if entity @s[tag=AngryCucco,scores={lifetime=501..599}] if block ^ ^ ^.3 minecraft:air run tp @s ^ ^ ^.3
execute if entity @s[tag=AngryCucco,scores={lifetime=501..599}] unless block ^ ^ ^.3 minecraft:air run scoreboard players set @s lifetime 600
execute if entity @s[tag=AngryCucco,scores={lifetime=600..660}] run tp @s ~ ~.5 ~
execute if entity @s[tag=AngryCucco,scores={lifetime=661..}] run kill @s

execute if entity @s[tag=AngryCucco] if entity @a[distance=..0.8] run effect give @a minecraft:wither 1 2 true
execute if entity @s[tag=Attack] if entity @a[distance=..0.8] run effect give @a minecraft:wither 1 2 true

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s BlueRupee2 1
execute if entity @s[scores={BlueRupee2=1..50}] run particle minecraft:smoke ~ ~.5 ~ .2 .1 .2 0 1 normal
execute if entity @s[scores={BlueRupee2=1..50}] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={BlueRupee2=51}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={BlueRupee2=51}] run tag @s remove Stun
execute if entity @s[scores={BlueRupee2=51}] run scoreboard players set @s BlueRupee2 0
