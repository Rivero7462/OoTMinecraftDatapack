execute unless entity @s[team=Rock] run team join Rock @s
effect clear @a minecraft:dolphins_grace
data merge entity @s {Air:4000s}
execute if entity @e[type=zombie,tag=MorphaEye,scores={ArrowCount=..61}] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=50}] run summon minecraft:armor_stand ~ 61.5 ~ {Tags:["Morpha","FakeTentacle"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={timer=50}] run playsound minecraft:ambient.underwater.loop hostile @a ~ ~ ~ 1 1.2

execute unless block ~ ~ ~1.5 #ocarina_of_time:morpha run tp @s ~ ~ ~-1
execute unless block ~ ~ ~-1.5 #ocarina_of_time:morpha run tp @s ~ ~ ~1
execute unless block ~1.5 ~ ~ #ocarina_of_time:morpha run tp @s ~-1 ~ ~
execute unless block ~-1.5 ~ ~ #ocarina_of_time:morpha run tp @s ~1 ~ ~
