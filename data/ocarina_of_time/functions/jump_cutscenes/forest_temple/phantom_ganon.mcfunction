execute unless entity @s[scores={timer=0..}] run tp @a 898 27 -1200 180 0
execute unless entity @s[scores={timer=0..}] run tp @s 898 29 -1205
execute unless entity @s[scores={timer=0..}] run effect clear @a minecraft:levitation
execute unless entity @s[scores={timer=0..}] run fill 905 28 -1212 891 33 -1198 minecraft:air replace minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 897 28 -1200 897 28 -1200 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 898 28 -1201 898 28 -1201 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 899 28 -1200 899 28 -1200 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 898 28 -1199 898 28 -1199 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run function ocarina_of_time:music/forest_temple
execute unless entity @s[scores={timer=0..}] run tag @a add NoOcarina
execute unless entity @s[scores={timer=0..}] run scoreboard players set @s timer 0

execute if entity @s[scores={timer=0..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..}] run particle minecraft:splash ~ ~1 ~ 0.2 0.3 0.2 1 1 normal

execute if entity @s[scores={timer=30}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"Hey, kid, you did quite well... It looks like you may be gaining some slight skill..."}]

execute if entity @s[scores={timer=120}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"But you have defeated only my phantom... When you fight the real me, it won't be so easy!"}]

execute if entity @s[scores={timer=230}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"What a worthless creation that ghost was! I will banish it to the gap between dimensions!"}]

execute if entity @s[scores={timer=310}] run playsound minecraft:entity.villager.death hostile @a ~ ~ ~ 2 .5
execute if entity @s[scores={timer=310}] run tp @s 898 18 -1205

execute if entity @s[scores={timer=340..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=340..}] run fill 904 24 -1204 904 24 -1204 minecraft:gold_block
execute if entity @s[scores={timer=340..}] run tag @a add ForestMedallion
execute if entity @s[scores={timer=340..}] run fill 897 26 -1205 899 26 -1205 minecraft:light_blue_concrete
execute if entity @s[scores={timer=340..}] run fill 898 26 -1204 898 26 -1206 minecraft:light_blue_concrete
execute if entity @s[scores={timer=340..}] run fill 899 28 -1199 897 28 -1201 minecraft:air
execute if entity @s[scores={timer=340..}] run clone 900 21 -1205 900 21 -1205 903 27 -1205
execute if entity @s[scores={timer=340..}] run tag @a remove DefeatPhantom
execute if entity @s[scores={timer=340..}] run scoreboard players reset @s timer
