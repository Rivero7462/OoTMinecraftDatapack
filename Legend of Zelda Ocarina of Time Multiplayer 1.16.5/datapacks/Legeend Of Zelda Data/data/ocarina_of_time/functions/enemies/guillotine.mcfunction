execute positioned ~ ~ ~-1 if entity @a[dx=2] run effect give @a minecraft:wither 1 1 true

scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run data merge entity @s {NoGravity:0b}
execute unless block ~ ~-.1 ~ minecraft:air unless entity @s[scores={tiemr=50}] run data merge entity @s {NoGravity:1b}
execute unless block ~ ~-.1 ~ minecraft:air unless entity @s[scores={timer=50}] run playsound minecraft:block.anvil.place hostile @a ~ ~ ~ .5 1
execute unless block ~ ~-.1 ~ minecraft:air unless entity @s[scores={tiemr=50}] run tp @s ~ ~.1 ~
execute unless block ~ ~-.1 ~ minecraft:air unless entity @s[scores={tiemr=50..}] run scoreboard players set @s timer 50
execute if block ^2 ^2 ^ minecraft:polished_andesite run scoreboard players set @s timer 0

#Type 1
execute if entity @s[tag=Type1,scores={timer=60..68}] run tp @s ~ ~.2 ~
execute if entity @s[tag=Type1,scores={timer=78..}] run tp @s ~ ~.15 ~

#Type 2
execute if entity @s[tag=Type2,scores={timer=60..}] run tp @s ~ ~.3 ~
