#Hold
execute at @a unless entity @s[tag=ThrowRuto] unless entity @a[x=1650,y=18,z=1293,dx=2,dy=36,dz=2] run tp @s ~ ~1.5 ~ ~ 0

#Throw
execute if entity @a[scores={HoldingRock=1..}] run tag @s add ThrowRuto
execute if entity @a[scores={HoldingRock=1..}] run scoreboard players reset @a HoldingRock
execute if entity @s[tag=ThrowRuto] run scoreboard players add @s lifetime 1

#Tp
#Forward/Up
execute if entity @s[scores={lifetime=1..15}] unless block ~ ~.5 ~ #ocarina_of_time:ruto if block ^ ^ ^1 #ocarina_of_time:ruto if block ^-.4 ^ ^.5 #ocarina_of_time:ruto if block ^.4 ^ ^.5 #ocarina_of_time:ruto run tp @s ^ ^ ^.25
execute if entity @s[scores={lifetime=1..15}] if block ~ ~.5 ~ #ocarina_of_time:ruto unless block ^ ^ ^1 #ocarina_of_time:ruto run tp @s ^ ^.15 ^
execute if entity @s[scores={lifetime=1..15}] if block ~ ~.5 ~ #ocarina_of_time:ruto if block ^ ^ ^1 #ocarina_of_time:ruto if block ^-.4 ^ ^.5 #ocarina_of_time:ruto if block ^.4 ^ ^.5 #ocarina_of_time:ruto run tp @s ^ ^.15 ^.25
#Down/Forward
execute if entity @s[scores={lifetime=15..24}] if block ^ ^1 ^1 #ocarina_of_time:ruto if block ^-.4 ^1 ^.5 #ocarina_of_time:ruto if block ^.4 ^1 ^.5 #ocarina_of_time:ruto run tp @s ^ ^-.5 ^.25
execute if entity @s[scores={lifetime=15..24}] unless block ^ ^1 ^1 #ocarina_of_time:ruto unless block ^-.4 ^1 ^.5 #ocarina_of_time:ruto unless block ^.4 ^1 ^.5 #ocarina_of_time:ruto run tp @s ^ ^-.5 ^
#Down
execute if entity @s[scores={lifetime=24..}] run tp @s ~ ~-.5 ~

#Finish
execute if entity @s[scores={lifetime=15..}] unless block ~ ~-.1 ~ #ocarina_of_time:ruto run tag @s remove ThrowRuto
execute if entity @s[scores={lifetime=15..}] unless block ~ ~-.1 ~ #ocarina_of_time:ruto run scoreboard players reset @a HoldingRock
execute if entity @s[scores={lifetime=15..}] unless block ~ ~-.1 ~ #ocarina_of_time:ruto run tag @s remove HoldRuto
execute if entity @s[scores={lifetime=15..}] unless block ~ ~-.1 ~ #ocarina_of_time:ruto run scoreboard players set @s lifetime 0

#Height Fix
execute if entity @a[tag=CarryRuto] if block ~ ~.6 ~ minecraft:water run tp @s ~ ~-.2 ~
execute if entity @a[tag=CarryRuto] if block ~ ~.6 ~ minecraft:stone_pressure_plate run tp @s ~ ~-.1 ~
execute if entity @a[tag=CarryRuto] if block ~ ~.6 ~ minecraft:light_weighted_pressure_plate run tp @s ~ ~-.1 ~
