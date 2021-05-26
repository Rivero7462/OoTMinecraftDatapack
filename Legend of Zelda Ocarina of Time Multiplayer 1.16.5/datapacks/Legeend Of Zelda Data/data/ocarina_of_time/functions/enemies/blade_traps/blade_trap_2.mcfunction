execute if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute unless entity @s[team=BladeTrap] run team join BladeTrap @s

scoreboard players add @s timer 1

#Add Cooldown
execute if entity @e[type=zombie,tag=Armos,distance=..1] run tag @s add Cooldown
execute unless entity @s[tag=Reverse] unless block ^ ^.5 ^.8 minecraft:air run tag @s add Cooldown
execute if entity @s[tag=Reverse] unless block ^ ^.5 ^-.8 minecraft:air run tag @s add Cooldown

#Cooldown
execute if entity @s[tag=Cooldown] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run scoreboard players add @s time 1
execute if entity @s[scores={lifetime=4..}] run tag @s remove Cooldown
execute if entity @s[scores={lifetime=4..}] run scoreboard players set @s lifetime 0

#Reverse
execute unless entity @s[scores={time=0..}] run scoreboard players set @s time 0
execute if entity @s[scores={time=0}] run tag @s add Reverse
execute if entity @s[scores={time=1}] run tag @s remove Reverse
execute if entity @s[scores={time=2..}] run scoreboard players set @s time 0
