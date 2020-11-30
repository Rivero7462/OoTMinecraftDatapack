tp @s ~ ~ ~ 0 0
execute if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute unless entity @s[team=BladeTrap] run team join BladeTrap @s

#North
execute if entity @s[tag=North] run scoreboard players add @s timer 1
execute as @s[tag=North,scores={timer=1..15}] run tp @s ~ ~ ~-.4
execute as @s[tag=North,scores={timer=1..15}] run tp @s ~ ~ ~-.4
execute as @s[tag=North,scores={timer=16..75}] run tp @s ~ ~ ~.1
execute as @s[tag=North,scores={timer=86..}] run tag @s remove North

#North 2
execute if entity @s[tag=North2] run scoreboard players add @s timer 1
execute as @s[tag=North2,scores={timer=1..11}] run tp @s ~ ~ ~-.4
execute as @s[tag=North2,scores={timer=1..11}] run tp @s ~ ~ ~-.4
execute as @s[tag=North2,scores={timer=12..55}] run tp @s ~ ~ ~.1
execute as @s[tag=North2,scores={timer=66..}] run tag @s remove North2

#West
execute if entity @s[tag=West] run scoreboard players add @s timer 1
execute as @s[tag=West,scores={timer=1..11}] run tp @s ~-.4 ~ ~
execute as @s[tag=West,scores={timer=1..11}] run tp @s ~-.4 ~ ~
execute as @s[tag=West,scores={timer=12..55}] run tp @s ~.1 ~ ~
execute as @s[tag=West,scores={timer=66..}] run tag @s remove West

#South
execute if entity @s[tag=South] run scoreboard players add @s timer 1
execute as @s[tag=South,scores={timer=1..11}] run tp @s ~ ~ ~.4
execute as @s[tag=South,scores={timer=1..11}] run tp @s ~ ~ ~.4
execute as @s[tag=South,scores={timer=12..55}] run tp @s ~ ~ ~-.1
execute as @s[tag=South,scores={timer=66..}] run tag @s remove South

#Extra
execute unless entity @s[tag=North] unless entity @s[tag=North2] unless entity @s[tag=West] unless entity @s[tag=South] run scoreboard players set @s timer 0
