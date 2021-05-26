#Walk around
execute unless entity @s[tag=Looking] run scoreboard players add @s timer 1
execute unless entity @s[tag=Looking] if entity @s[scores={timer=1..2}] facing entity @e[type=area_effect_cloud,tag=GohmaSpot,limit=1,sort=random] eyes run tp @s ~ ~ ~ ~180 -90
execute unless entity @s[tag=Looking] if entity @s[scores={timer=6..}] run tp @s ^ ^.15 ^ ~ -90

execute unless entity @s[tag=Looking] if entity @s[scores={timer=15..}] if block ~ ~ ~ minecraft:cobblestone run scoreboard players set @s timer 0
execute unless entity @s[tag=Looking] if entity @s[scores={timer=15..}] if block ^ ^.15 ^ minecraft:cobblestone run scoreboard players set @s timer 0
execute unless entity @s[tag=Looking] if entity @s[scores={timer=20..}] if entity @e[type=area_effect_cloud,tag=GohmaSpot,distance=..0.2] run scoreboard players set @s timer 0
execute if entity @s[scores={timer=40..}] run scoreboard players set @s timer 0

execute if entity @s[scores={timer=..-30}] run kill @e[type=area_effect_cloud,tag=GohmaSpot]
execute if entity @s[scores={timer=..-30}] run summon minecraft:area_effect_cloud 1427 12 -661 {Tags:["GohmaSpot","GohmaSpot1"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={timer=..-30}] run summon minecraft:area_effect_cloud 1427 27 -661 {Tags:["GohmaSpot","GohmaSpot2"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={timer=..-30}] run tag @s remove Looking
execute if entity @s[scores={timer=..-30}] run tag @s add Attack
execute if entity @s[scores={timer=..-30}] run scoreboard players set @s timer 0

#Sounds
execute unless entity @s[tag=Looking] if entity @s[scores={timer=8}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .5
execute unless entity @s[tag=Looking] if entity @s[scores={timer=12}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .7
execute unless entity @s[tag=Looking] if entity @s[scores={timer=25}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .6
execute unless entity @s[tag=Looking] if entity @s[scores={timer=30}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .8





