#Rotation
data modify entity @s Rotation[1] set value 0f

#Extra
execute if block ~ ~ ~ minecraft:ladder[facing=north] run tp @s ~ ~ ~-1

#Not Aggressive
#North
execute if entity @s[tag=!Attack,tag=!Return,tag=North] at @s run tp @s ~ ~ ~ 180 0
#South
execute if entity @s[tag=!Attack,tag=!Return,tag=South] at @s run tp @s ~ ~ ~ 0 0
#East
execute if entity @s[tag=!Attack,tag=!Return,tag=East] at @s run tp @s ~ ~ ~ -90 0
#West
execute if entity @s[tag=!Attack,tag=!Return,tag=West] at @s run tp @s ~ ~ ~ 90 0

#Attack
execute if entity @s[nbt={HurtTime:10s}] if entity @s[tag=Resist] unless entity @s[tag=Return] run tag @s add Attack
execute if entity @a[distance=..1.5] if entity @s[tag=Resist] unless entity @s[tag=Return] run tag @s add Attack
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] run scoreboard players add @s timer 1
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ArmosReset"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=19}] if entity @s[scores={GameTimer=3..}] run tag @s add Return
execute unless entity @s[tag=Stun] if entity @s[scores={timer=20}] run data merge entity @s {NoAI:0b}
execute if entity @a[tag=Adult] unless entity @s[tag=Stun] if entity @s[scores={timer=20}] run tag @s remove Resist
execute if entity @a[tag=Adult] unless entity @s[tag=Stun] if entity @s[scores={timer=20}] run effect clear @s minecraft:resistance
execute unless entity @s[tag=Stun] if entity @s[scores={timer=20..}] facing entity @p feet rotated ~ 0 unless block ~ ~-.1 ~ #ocarina_of_time:armos run tp @s ^ ^ ^ ~ 0
execute if block ~ ~-.1 ~ #ocarina_of_time:armos run tp @s ~ ~-.1 ~ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={timer=20}] facing entity @p feet rotated ~ 0 unless block ^ ^-1 ^1 #ocarina_of_time:armos if block ^ ^ ^.5 #ocarina_of_time:armos run tp @s ^ ^.6 ^.5 ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={timer=30}] facing entity @p feet rotated ~ 0 unless block ^ ^-1 ^1 #ocarina_of_time:armos if block ^ ^ ^.5 #ocarina_of_time:armos run tp @s ^ ^.6 ^.5 ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={timer=40}] facing entity @p feet rotated ~ 0 unless block ^ ^-1 ^1 #ocarina_of_time:armos if block ^ ^ ^.5 #ocarina_of_time:armos run tp @s ^ ^.6 ^.5 ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={timer=20}] facing entity @p feet rotated ~ 0 unless block ^ ^ ^.5 #ocarina_of_time:armos run tp @s ^ ^.6 ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={timer=30}] facing entity @p feet rotated ~ 0 unless block ^ ^ ^.5 #ocarina_of_time:armos run tp @s ^ ^.6 ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={timer=40}] facing entity @p feet rotated ~ 0 if block ^ ^ ^.5 #ocarina_of_time:armos run tp @s ^ ^.6 ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={timer=20}] facing entity @p feet rotated ~ 0 if block ^ ^-1 ^1 #ocarina_of_time:armos run tp @s ^ ^.6 ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={timer=30}] facing entity @p feet rotated ~ 0 if block ^ ^-1 ^1 #ocarina_of_time:armos run tp @s ^ ^.6 ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={timer=40}] facing entity @p feet rotated ~ 0 if block ^ ^-1 ^1 #ocarina_of_time:armos run tp @s ^ ^.6 ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={timer=65..}] run scoreboard players add @s GameTimer 1
execute unless entity @s[tag=Stun] if entity @s[scores={timer=65..}] run scoreboard players set @s timer 2
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] unless entity @a[distance=..14] run tag @s add Return

#Return
execute unless entity @s[tag=Stun] if entity @s[tag=Return] run scoreboard players add @s lifetime 1
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1}] run scoreboard players set @s GameTimer 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1}] run tag @s remove Attack
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1}] run scoreboard players set @s timer 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1}] run data merge entity @s {NoAI:1b}
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=6}] unless block ~ ~-.5 ~ #ocarina_of_time:armos facing entity @e[type=area_effect_cloud,tag=ArmosReset,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^.6 ^.6 ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=11..}] run scoreboard players set @s lifetime 0

#Reset
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1..}] if entity @e[type=area_effect_cloud,tag=ArmosReset,distance=..0.5,sort=nearest,limit=1] run tag @s add Reset
execute if entity @s[tag=Reset] at @e[type=area_effect_cloud,tag=ArmosReset,sort=nearest,limit=1] run tp @s ~ ~ ~
execute if entity @s[tag=Reset] run kill @e[type=area_effect_cloud,tag=ArmosReset,limit=1,sort=nearest]
execute if entity @s[tag=Reset] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Reset] run tag @s add Resist
execute if entity @s[tag=Reset] run tag @s remove Return
execute if entity @s[tag=Reset] run tag @s remove Reset

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run tag @s remove Resist
execute if entity @s[scores={time=1}] run effect clear @s minecraft:resistance
execute if entity @s[scores={time=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ .4 .1 .4 1 1
execute if entity @s[scores={time=110..}] unless entity @a[tag=Adult] run tag @s add Resist
execute if entity @s[scores={time=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s time 0

#Slingshot
execute if entity @s[tag=Stun] if entity @e[type=snowball,distance=..2] run effect give @s minecraft:resistance 1 1 true
execute if entity @s[tag=Stun] if entity @e[type=snowball,distance=..2] run effect give @s minecraft:instant_health 1 0 true

#Arrow
execute positioned ~ ~1 ~ if entity @e[type=arrow,distance=..1.5] if entity @s[tag=Attack] run tag @s add Kill2

#Kill
execute if entity @s[tag=Kill] run summon minecraft:item ~ ~ ~ {Item:{id:tnt,Count:1,tag:{display:{Name:"\"Bomb\""}}},PickupDelay:0}
execute if entity @s[tag=Kill] run kill @s
execute if entity @s[tag=Kill2] run kill @s

#Sounds
execute if entity @s[scores={timer=2}] unless entity @s[tag=Stun] run playsound minecraft:entity.wandering_trader.death hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=25}] unless entity @s[tag=Stun] run playsound minecraft:block.anvil.break hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=35}] unless entity @s[tag=Stun] run playsound minecraft:block.anvil.break hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=45}] unless entity @s[tag=Stun] run playsound minecraft:block.anvil.break hostile @a ~ ~ ~ 1 1

execute if entity @s[scores={lifetime=8}] unless entity @s[tag=Stun] run playsound minecraft:block.anvil.break hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={lifetime=18}] unless entity @s[tag=Stun] run playsound minecraft:block.anvil.break hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={lifetime=28}] unless entity @s[tag=Stun] run playsound minecraft:block.anvil.break hostile @a ~ ~ ~ 1 1
