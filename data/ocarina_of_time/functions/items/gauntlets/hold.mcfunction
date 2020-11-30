execute if entity @a[tag=HoldSilverRock] run scoreboard objectives add HoldSilverRock minecraft.custom:minecraft.sneak_time
execute if entity @a[tag=HoldSilverRock] run scoreboard objectives add HoldSilverRock2 minecraft.custom:minecraft.jump
execute as @e[type=armor_stand,tag=SilverRock] at @a rotated ~ 0 if entity @a[tag=HoldSilverRock] unless entity @a[scores={HoldSilverRock2=1..}] unless entity @a[scores={HoldSilverRock=1..}] run tp @s ^ ^1.2 ^ ~ 0

#Tp Foward
execute as @e[type=armor_stand,tag=SilverRock] at @s if entity @a[scores={HoldSilverRock=1..}] unless entity @a[scores={HoldSilverRock2=1..}] run scoreboard players add @s lifetime 1
execute as @e[type=armor_stand,tag=SilverRock] unless entity @s[scores={lifetime=25..}] at @s if block ^ ^1 ^1 minecraft:air if block ~ ~3 ~ minecraft:air run tp @s ^ ^ ^.25

#Tp Vertical
execute as @e[type=armor_stand,tag=SilverRock] if entity @s[scores={lifetime=1..15}] at @s if block ~ ~3 ~ minecraft:air run tp @s ~ ~.1 ~
execute as @e[type=armor_stand,tag=SilverRock] if entity @s[scores={lifetime=15..}] at @s if block ~ ~1.5 ~ minecraft:air run tp @s ~ ~-.5 ~

#Slow
execute as @e[type=armor_stand,tag=SilverRock] unless entity @s[scores={lifetime=1..}] run effect give @a minecraft:slowness 3 10 true
execute as @e[type=armor_stand,tag=SilverRock] if entity @s[scores={lifetime=1..}] run effect clear @a minecraft:slowness

#Jump
execute as @e[type=armor_stand,tag=SilverRock] at @s if entity @a[scores={HoldSilverRock2=1..}] if block ~ ~.6 ~ minecraft:air run scoreboard players add @s lifetime 1

#End
execute as @e[type=armor_stand,tag=SilverRock] at @s unless block ~ ~1.5 ~ minecraft:air at @a run playsound minecraft:block.basalt.break ambient @a ~ ~ ~ 2 .5
execute as @e[type=armor_stand,tag=SilverRock] at @s unless block ~ ~1.5 ~ minecraft:air run scoreboard players set @s lifetime 0
execute as @e[type=armor_stand,tag=SilverRock] at @s unless block ~ ~1.5 ~ minecraft:air run tag @a remove HoldSilverRock
execute as @e[type=armor_stand,tag=SilverRock] at @s unless block ~ ~1.5 ~ minecraft:air run kill @s

execute unless entity @e[type=armor_stand,tag=SilverRock] run tag @a remove HoldSilverRock
execute unless entity @e[type=armor_stand,tag=SilverRock] run scoreboard objectives remove HoldSilverRock
execute unless entity @e[type=armor_stand,tag=SilverRock] run scoreboard objectives remove HoldSilverRock2

execute unless entity @a[tag=RockTutorial] run tellraw @a ["",{"text":"Crouch to throw rocks!"}]
execute unless entity @a[tag=RockTutorial] run tag @a add RockTutorial
