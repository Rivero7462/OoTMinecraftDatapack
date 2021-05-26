scoreboard players add @s ArrowCount 1

execute if entity @s[scores={ArrowCount=1..50}] at @a run tp @a 2169 ~ 1897 180 0
execute if entity @s[scores={ArrowCount=1}] run fill 2170 14 1897 2170 14 1897 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run fill 2169 14 1898 2169 14 1898 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run fill 2168 14 1897 2168 14 1897 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run fill 2169 14 1896 2169 14 1896 minecraft:barrier

execute if entity @s[scores={ArrowCount=51}] run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={ArrowCount=51}] run tp @s ~ ~ ~-1
execute if entity @s[scores={ArrowCount=71}] run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={ArrowCount=71}] run tp @s ~ ~ ~-1
execute if entity @s[scores={ArrowCount=91}] run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={ArrowCount=91}] run tp @s ~ ~ ~-1

#Title
execute if entity @s[scores={ArrowCount=121}] run title @a times 5 50 5
execute if entity @s[scores={ArrowCount=121}] run title @a subtitle "Infernal Dinosaur"
execute if entity @s[scores={ArrowCount=121}] run title @a title "King Dodongo"

execute if entity @s[scores={ArrowCount=121}] run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={ArrowCount=121}] run data merge entity @s {ArmorItems:[{},{},{},{id:dead_fire_coral_fan,Count:1b,tag:{CustomModelData:2}}]}

execute if entity @s[scores={ArrowCount=161}] run data merge entity @s {ArmorItems:[{},{},{},{id:dead_fire_coral_fan,Count:1b,tag:{CustomModelData:1}}]}
execute if entity @s[scores={ArrowCount=161}] run function ocarina_of_time:music/fire_boss_theme

execute if entity @s[scores={ArrowCount=171..}] run scoreboard players set @s timer 45
execute if entity @s[scores={ArrowCount=171..}] run tag @s add Attack
execute if entity @s[scores={ArrowCount=171..}] run fill 2168 14 1898 2170 14 1896 minecraft:air
execute if entity @s[scores={ArrowCount=171..}] run scoreboard players set @s ArrowCount 0
