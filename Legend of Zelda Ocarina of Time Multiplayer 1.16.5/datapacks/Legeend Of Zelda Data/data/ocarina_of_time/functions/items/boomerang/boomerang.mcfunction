execute at @s unless block ~ ~1.8 ~ #ocarina_of_time:boomerang run scoreboard players set @s lifetime 51
clear @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Boomerang\"}"},Unbreakable:1b,HideFlags:63,Boomerang:1b}
scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run tp @e[type=armor_stand,tag=BoomerangStart] @p

execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=1}] run tp @s ^1 ^ ^1
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=3}] run tp @s ^2 ^ ^2
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=5}] run tp @s ^2 ^ ^3
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=7}] run tp @s ^3 ^ ^4
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=9}] run tp @s ^3 ^ ^5
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=11}] run tp @s ^4 ^ ^6
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=13}] run tp @s ^5 ^ ^7
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=15}] run tp @s ^5 ^ ^8
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=17}] run tp @s ^4 ^ ^9
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=19}] run tp @s ^3 ^ ^10
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=21}] run tp @s ^2 ^ ^10
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=23}] run tp @s ^1 ^ ^11
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=25}] run tp @s ^ ^ ^11
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=27}] run tp @s ^-1 ^ ^11
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=29}] run tp @s ^-2 ^ ^10
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=31}] run tp @s ^-3 ^ ^10
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=33}] run tp @s ^-4 ^ ^9
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=35}] run tp @s ^-5 ^ ^8
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=37}] run tp @s ^-5 ^ ^7
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=39}] run tp @s ^-4 ^ ^6
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=41}] run tp @s ^-3 ^ ^5
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=43}] run tp @s ^-3 ^ ^4
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=45}] run tp @s ^-2 ^ ^3
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=47}] run tp @s ^-2 ^ ^2
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=49}] run tp @s ^-1 ^ ^1
execute unless entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=51}] run tp @s ^ ^ ^

execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=1}] run tp @s ^ ^ ^1
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=3}] run tp @s ^ ^ ^2
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=5}] run tp @s ^ ^ ^3
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=7}] run tp @s ^ ^ ^4
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=9}] run tp @s ^ ^ ^5
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=11}] run tp @s ^ ^ ^6
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=13}] run tp @s ^ ^ ^7
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=15}] run tp @s ^ ^ ^8
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=17}] run tp @s ^ ^ ^9
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=19}] run tp @s ^ ^ ^10
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=21}] run tp @s ^ ^ ^10
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=23}] run tp @s ^ ^ ^11
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=25}] run tp @s ^ ^ ^11
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=27}] run tp @s ^-1 ^ ^11
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=29}] run tp @s ^-2 ^ ^10
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=31}] run tp @s ^-3 ^ ^10
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=33}] run tp @s ^-4 ^ ^9
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=35}] run tp @s ^-5 ^ ^8
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=37}] run tp @s ^-5 ^ ^7
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=39}] run tp @s ^-4 ^ ^6
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=41}] run tp @s ^-3 ^ ^5
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=43}] run tp @s ^-3 ^ ^4
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=45}] run tp @s ^-2 ^ ^3
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=47}] run tp @s ^-2 ^ ^2
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=49}] run tp @s ^-1 ^ ^1
execute if entity @a[tag=BoomerangMode] if entity @s[scores={lifetime=51}] run tp @s ^ ^ ^