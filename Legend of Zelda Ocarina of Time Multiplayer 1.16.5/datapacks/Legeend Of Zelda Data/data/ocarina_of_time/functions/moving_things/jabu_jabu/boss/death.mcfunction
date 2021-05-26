scoreboard players add @s ArrowCount 1

#Summon Jelly
execute if entity @s[scores={ArrowCount=1}] run tp @a 1668 52 1333 -90 ~
execute if entity @s[scores={ArrowCount=1}] run function ocarina_of_time:music/jabu_jabu
execute if entity @s[scores={ArrowCount=1}] run fill 1669 53 1333 1669 53 1333 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run fill 1668 53 1332 1668 53 1332 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run fill 1667 53 1333 1667 53 1333 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run fill 1668 53 1334 1668 53 1334 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run tp @s 1681 54 1333

execute if entity @s[scores={ArrowCount=1..80}] run particle minecraft:sneeze ~ ~2 ~ 1 2 1 0 20 normal

execute if entity @s[scores={ArrowCount=85}] run particle minecraft:explosion_emitter ~ ~2 ~ 0 0.2 0 0 2 normal
execute if entity @s[scores={ArrowCount=90}] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={ArrowCount=92}] run playsound minecraft:entity.zombie_pigman.death hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={ArrowCount=92}] run fill 1683 44 1328 1683 44 1328 minecraft:gold_block
execute if entity @s[scores={ArrowCount=92}] run fill 1688 51 1338 1688 51 1340 minecraft:light_blue_concrete
execute if entity @s[scores={ArrowCount=92}] run fill 1687 51 1339 1689 51 1339 minecraft:light_blue_concrete
execute if entity @s[scores={ArrowCount=92}] run tag @a add RutoSaphire
execute if entity @s[scores={ArrowCount=92}] run data merge entity @e[type=armor_stand,tag=Ruto1,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[scores={ArrowCount=92}] run scoreboard players set @e[type=armor_stand,tag=Ruto1] text 3
execute if entity @s[scores={ArrowCount=92}] run fill 1729 49 1294 1729 49 1294 minecraft:gold_block
execute if entity @s[scores={ArrowCount=92}] run tp @e[type=armor_stand,tag=Ruto1] 1689 52 1339 90 ~
execute if entity @s[scores={ArrowCount=92}] run clone 1678 43 1333 1678 43 1333 1681 52 1333
execute if entity @s[scores={ArrowCount=92}] run fill 1669 53 1332 1667 53 1334 minecraft:air
execute if entity @s[scores={ArrowCount=92}] run kill @s
