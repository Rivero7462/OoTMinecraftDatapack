#Randomizer
scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=7..}] run scoreboard players set @s ArrowCount 0

#Rotation
data modify entity @s Rotation[1] set value 0f

#Strafe
execute unless entity @s[tag=Stun] unless entity @s[tag=Action] unless entity @a[distance=..4] run scoreboard players add @s lifetime 1
execute unless entity @s[tag=Stun] unless entity @s[tag=Action] if entity @a[distance=..4] run scoreboard players set @s lifetime 0

execute if entity @s[scores={lifetime=1..10}] facing entity @p feet rotated ~ 0 if block ^.6 ^ ^ minecraft:air if block ^.6 ^ ^-.4 minecraft:air if block ^.6 ^ ^.4 minecraft:air run tp @s ^.2 ^ ^ ~ 0
execute if entity @s[scores={lifetime=1..10}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^ minecraft:air run tp @s ^ ^ ^ ~ 0
execute if entity @s[scores={lifetime=1..10}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^-.4 minecraft:air run tp @s ^ ^ ^ ~ 0
execute if entity @s[scores={lifetime=1..10}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^.4 minecraft:air run tp @s ^ ^ ^ ~ 0

execute if entity @s[scores={lifetime=11..25}] facing entity @p feet rotated ~ 0 if block ~ ~-.1 ~ minecraft:air run tp @s ~ ~-.1 ~ ~ 0
execute if entity @s[scores={lifetime=11..25}] facing entity @p feet rotated ~ 0 unless block ~ ~-.1 ~ minecraft:air run tp @s ~ ~ ~ ~ 0

execute if entity @s[scores={lifetime=26..36}] facing entity @p feet rotated ~ 0 if block ^-.6 ^ ^ minecraft:air if block ^-.6 ^ ^-.4 minecraft:air if block ^-.6 ^ ^.4 minecraft:air run tp @s ^-.2 ^ ^ ~ 0
execute if entity @s[scores={lifetime=26..36}] facing entity @p feet rotated ~ 0 unless block ^-.6 ^ ^ minecraft:air run tp @s ^ ^ ^ ~ 0
execute if entity @s[scores={lifetime=26..36}] facing entity @p feet rotated ~ 0 unless block ^-.6 ^ ^-.4 minecraft:air run tp @s ^ ^ ^ ~ 0
execute if entity @s[scores={lifetime=26..36}] facing entity @p feet rotated ~ 0 unless block ^-.6 ^ ^.4 minecraft:air run tp @s ^ ^ ^ ~ 0

execute if entity @s[scores={lifetime=37..45}] facing entity @p feet rotated ~ 0 if block ~ ~-.1 ~ minecraft:air run tp @s ~ ~-.1 ~ ~ 0
execute if entity @s[scores={lifetime=37..45}] facing entity @p feet rotated ~ 0 unless block ~ ~-.1 ~ minecraft:air run tp @s ~ ~ ~ ~ 0

execute if entity @s[scores={lifetime=46..}] run scoreboard players set @s lifetime 0

#Choices
execute unless entity @s[tag=Stun] unless entity @s[tag=Action] if entity @a[distance=..4] run scoreboard players add @s timer 1
execute unless entity @s[tag=Stun] if entity @s[tag=Action] run scoreboard players add @s timer 1
execute unless entity @s[tag=Stun] unless entity @s[tag=Action] unless entity @a[distance=..4] run function ocarina_of_time:enemies/dinolfos/reset
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1}] run tag @s add Action

#Attack
execute if entity @s[scores={timer=1,ArrowCount=0..1}] run tag @s add Attack
execute if entity @s[tag=Attack,scores={timer=2..10}] facing entity @p feet rotated ~ 0 if block ^ ^ ^.4 minecraft:air if block ^.4 ^ ^.4 minecraft:air if block ^-.4 ^ ^.4 minecraft:air run tp @s ^ ^ ^.05 ~ 0
execute if entity @s[tag=Attack,scores={timer=45..}] run function ocarina_of_time:enemies/dinolfos/reset

#Jump Back
execute if entity @s[scores={timer=1,ArrowCount=2..4}] run tag @s add JumpBack
execute if entity @s[tag=JumpBack,scores={timer=2..13}] facing entity @p feet rotated ~ 0 if block ^ ^ ^-.6 minecraft:air if block ^.4 ^ ^-.6 minecraft:air if block ^-.4 ^ ^-.6 minecraft:air run tp @s ^ ^ ^-.3 ~ 0
execute if entity @s[tag=JumpBack,scores={timer=30..}] run function ocarina_of_time:enemies/dinolfos/reset

#Jump Over
execute unless entity @s[tag=Stun] unless entity @s[tag=JumpOver] if entity @s[nbt={HurtTime:10s}] run function ocarina_of_time:enemies/dinolfos/reset
execute unless entity @s[tag=Stun] unless entity @s[tag=JumpOver] if entity @s[nbt={HurtTime:10s}] run tag @s add JumpOver

execute if entity @s[tag=JumpOver,scores={timer=2}] run data merge entity @s {NoAI:1b,Invulnerable:1b}
execute if entity @s[tag=JumpOver,scores={timer=2..11}] if block ^ ^1 ^.6 minecraft:air if block ^-.4 ^1 ^.6 minecraft:air if block ^.4 ^1 ^.6 minecraft:air run tp @s ^ ^.3 ^.3 ~ 0
execute if entity @s[tag=JumpOver,scores={timer=12..16}] if block ^ ^1 ^.6 minecraft:air if block ^-.4 ^1 ^.6 minecraft:air if block ^.4 ^1 ^.6 minecraft:air run tp @s ^ ^ ^.2 ~ 0
execute if entity @s[tag=JumpOver,scores={timer=17..26}] if block ^ ^1 ^.6 minecraft:air if block ^-.4 ^1 ^.6 minecraft:air if block ^.4 ^1 ^.6 minecraft:air if block ~ ~-.3 ~ minecraft:air run tp @s ^ ^-.3 ^.1 ~ 0
execute if entity @s[tag=JumpOver,scores={timer=17..26}] unless block ^ ^1 ^.6 minecraft:air if block ~ ~-.3 ~ minecraft:air run tp @s ^ ^-.3 ^ ~ 0
execute if entity @s[tag=JumpOver,scores={timer=17..26}] unless block ^-.4 ^1 ^.6 minecraft:air if block ~ ~-.3 ~ minecraft:air run tp @s ^ ^-.3 ^ ~ 0
execute if entity @s[tag=JumpOver,scores={timer=17..26}] unless block ^.4 ^1 ^.6 minecraft:air if block ~ ~-.3 ~ minecraft:air run tp @s ^ ^-.3 ^ ~ 0
execute if entity @s[tag=JumpOver,scores={timer=27}] run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute if entity @s[tag=JumpOver,scores={timer=40..}] run function ocarina_of_time:enemies/dinolfos/reset

execute if entity @s[tag=Action,scores={timer=100..}] run function ocarina_of_time:enemies/dinolfos/reset

#Nothing
execute if entity @s[scores={timer=1,ArrowCount=5}] run tag @s add Nothing
execute if entity @s[tag=Nothing,scores={timer=30..}] run function ocarina_of_time:enemies/dinolfos/reset

#Slingshot
execute unless entity @s[tag=JumpOver] if entity @e[type=snowball,distance=..2] run effect give @s minecraft:resistance 1 0 true
execute unless entity @s[tag=JumpOver] if entity @e[type=snowball,distance=..2] run effect give @s minecraft:instant_health 1 0 true

#Arrow
execute unless entity @s[tag=JumpOver] positioned ~ ~1 ~ if entity @e[type=arrow,distance=..1.5] unless entity @s[tag=Block] run tag @s add Stun

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={time=1}] run function ocarina_of_time:enemies/dinolfos/reset
execute if entity @s[scores={time=2}] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={time=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1 ~ .3 .7 .3 1 1
execute if entity @s[scores={time=110..}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={time=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s time 0

execute if entity @s[tag=Stun,nbt={HurtTime:10s}] run scoreboard players set @s time 109

#Sounds
execute if entity @s[scores={timer=1}] run playsound minecraft:entity.dolphin.hurt hostile @a ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=1}] run playsound minecraft:entity.dolphin.hurt hostile @a ~ ~ ~ 1 1.6
execute if entity @a[distance=..1.5,nbt={HurtTime:9s}] run playsound minecraft:entity.dolphin.hurt hostile @a ~ ~ ~ 1 1.6
