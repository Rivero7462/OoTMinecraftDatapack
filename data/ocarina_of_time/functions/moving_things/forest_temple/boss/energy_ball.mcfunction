scoreboard players add @s timer 1
execute at @e[type=zombie,tag=PhantomGanon] unless entity @s[distance=..1] run scoreboard players add @s lifetime 1

#Attack Player
execute unless entity @s[tag=Reflect] if entity @s[scores={timer=1..5}] facing entity @a eyes run tp @s ^ ^ ^.2 ~ ~
execute unless entity @s[tag=Reflect] if entity @s[scores={timer=6..}] run tp @s ^ ^ ^.2 ~ ~

#Attack Phantom
execute if entity @s[tag=Reflect,scores={timer=1..}] facing entity @e[type=zombie,tag=PhantomGanon] feet run tp @s ^ ^ ^.2 ~ ~

#Dissapear
execute unless block ~ ~1 ~ minecraft:air run kill @s
execute if entity @s[scores={timer=200..}] run kill @s

#Stun Chance
execute if entity @s[scores={timer=20..,time=1}] run scoreboard players set @s lifetime 1
execute if entity @s[scores={lifetime=12..,time=2}] run scoreboard players set @s lifetime 1
execute if entity @s[scores={lifetime=8..,time=3}] run scoreboard players set @s lifetime 1
execute if entity @s[scores={lifetime=5..,time=4}] run scoreboard players set @s lifetime 1
execute if entity @s[scores={lifetime=3..,time=5}] run scoreboard players set @s lifetime 1
execute if entity @s[scores={lifetime=2..,time=6..}] run scoreboard players set @s lifetime 1

#Speed
execute if entity @s[scores={time=1..}] run function ocarina_of_time:moving_things/forest_temple/boss/speed_1
execute if entity @s[scores={time=2..}] run function ocarina_of_time:moving_things/forest_temple/boss/speed_1
execute if entity @s[scores={time=3..}] run function ocarina_of_time:moving_things/forest_temple/boss/speed_2
execute if entity @s[scores={time=4..}] run function ocarina_of_time:moving_things/forest_temple/boss/speed_2
execute if entity @s[scores={time=5..}] run function ocarina_of_time:moving_things/forest_temple/boss/speed_2
execute if entity @s[scores={time=6..}] run function ocarina_of_time:moving_things/forest_temple/boss/speed_2

#Switch
execute at @e[type=zombie,tag=PhantomGanon] if entity @s[distance=..1,tag=Reflect] unless entity @s[scores={lifetime=1}] run function ocarina_of_time:moving_things/forest_temple/boss/attack
execute at @e[type=zombie,tag=PhantomGanon] if entity @s[distance=..1,tag=Reflect] if entity @s[scores={lifetime=1}] run tag @e[type=zombie,tag=PhantomGanon] add Stun

execute unless entity @s[tag=Reflect] if entity @s[nbt={HurtTime:10s}] run function ocarina_of_time:moving_things/forest_temple/boss/reflect

#Shield
execute if entity @a[distance=..0.4] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:wither 1 2 true
execute if entity @a[distance=..0.4] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] at @a run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..0.4] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] at @a run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..0.4] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 .5
execute if entity @a[distance=..0.4] run kill @s

#Particle
execute unless entity @s[tag=Reflect] run particle minecraft:entity_effect ~ ~.5 ~ 1 1 0 1 0 normal @a
execute if entity @s[tag=Reflect] run particle minecraft:entity_effect ~ ~.5 ~ 0 0.5 1 1 0 normal @a
