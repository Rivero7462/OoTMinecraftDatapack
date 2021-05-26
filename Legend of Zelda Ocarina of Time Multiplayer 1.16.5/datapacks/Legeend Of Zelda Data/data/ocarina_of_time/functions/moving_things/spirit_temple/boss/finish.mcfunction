scoreboard players add @s ArrowCount 1

execute if entity @s[scores={ArrowCount=1}] run kill @e[tag=Twinrova]
execute if entity @s[scores={ArrowCount=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={ArrowCount=1}] as @e[type=armor_stand,tag=Koume2] run data merge entity @s {Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={ArrowCount=1}] run tp @s -25 123 763 0 ~
execute if entity @s[scores={ArrowCount=1}] run tp @e[type=armor_stand,tag=Koume2] -29 123 763 0 ~
execute if entity @s[scores={ArrowCount=1}] run stopsound @a hostile
execute if entity @s[scores={ArrowCount=1}] run function ocarina_of_time:music/kotake_koume
execute if entity @s[scores={ArrowCount=1}] run effect clear @a minecraft:levitation
execute if entity @s[scores={ArrowCount=1}] run fill -27 124 766 -27 124 766 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run fill -28 124 767 -28 124 767 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run fill -26 124 767 -26 124 767 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run fill -27 124 768 -27 124 768 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run tp @a -27 123 767 180 0

execute if entity @s[scores={ArrowCount=40}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"Shoot! What a fresh kid! This time we'll get serious. Right, Kotake?","color":"white"}]

execute if entity @s[scores={ArrowCount=50..60}] run tp @s ~ ~.1 ~
execute if entity @s[scores={ArrowCount=50..60}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~.1 ~

execute if entity @s[scores={ArrowCount=60}] run data merge entity @s {HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:24}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}]}
execute if entity @s[scores={ArrowCount=60}] as @e[type=armor_stand,tag=Koume2] run data merge entity @s {HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:24}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}]}
execute if entity @s[scores={ArrowCount=60}] run fill -29 140 765 -25 140 761 minecraft:white_concrete
execute if entity @s[scores={ArrowCount=60..}] run particle minecraft:composter -27 131 763 1 4 1 0 3

execute if entity @s[scores={ArrowCount=80}] run tp @s ~ ~ ~ 90 ~
execute if entity @s[scores={ArrowCount=80}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"What?","color":"white"}]

execute if entity @s[scores={ArrowCount=100}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"Hey, Koume, what is that above your head?","color":"white"}]

execute if entity @s[scores={ArrowCount=130}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~ ~ -90 ~
execute if entity @s[scores={ArrowCount=150}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"I don't know, but you have one over your head too, Kotake!","color":"white"}]

execute if entity @s[scores={ArrowCount=180}] run tp @s ~ ~ ~ 0 ~
execute if entity @s[scores={ArrowCount=180}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~ ~ 0 ~

execute if entity @s[scores={ArrowCount=220}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"But I'm only 400 years old!","color":"white"}]
execute if entity @s[scores={ArrowCount=220}] as @e[type=armor_stand,tag=Koume2] at @s run playsound minecraft:entity.llama.angry hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={ArrowCount=260}] run tp @s ~ ~ ~ 90 ~
execute if entity @s[scores={ArrowCount=260}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"And I'm just 380 years old!","color":"white"}]
execute if entity @s[scores={ArrowCount=260}] run playsound minecraft:entity.llama.angry hostile @a ~ ~ ~ 1 2

execute if entity @s[scores={ArrowCount=290}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~ ~ -90 ~
execute if entity @s[scores={ArrowCount=290}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"We're twins! Don't try to lie about your age!","color":"white"}]
execute if entity @s[scores={ArrowCount=290}] as @e[type=armor_stand,tag=Koume2] at @s run playsound minecraft:entity.llama.angry hostile @a ~ ~ ~ 1 2

execute if entity @s[scores={ArrowCount=320}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"You must have gone senile!","color":"white"}]
execute if entity @s[scores={ArrowCount=320}] run playsound minecraft:entity.llama.angry hostile @a ~ ~ ~ 1 2

execute if entity @s[scores={ArrowCount=350}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"Who are you calling senile?! Is that how you treat your older sister?","color":"white"}]
execute if entity @s[scores={ArrowCount=350}] as @e[type=armor_stand,tag=Koume2] at @s run playsound minecraft:entity.llama.angry hostile @a ~ ~ ~ 1 2

execute if entity @s[scores={ArrowCount=390}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"We are twins! How can you be older?","color":"white"}]
execute if entity @s[scores={ArrowCount=390}] run playsound minecraft:entity.llama.angry hostile @a ~ ~ ~ 1 2

execute if entity @s[scores={ArrowCount=420}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"Keeeyaaah! How heartless you are!","color":"white"}]
execute if entity @s[scores={ArrowCount=420}] as @e[type=armor_stand,tag=Koume2] at @s run playsound minecraft:entity.llama.angry hostile @a ~ ~ ~ 1 2

execute if entity @s[scores={ArrowCount=450}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"How can you be so ungrateful?","color":"white"}]
execute if entity @s[scores={ArrowCount=450}] run playsound minecraft:entity.llama.angry hostile @a ~ ~ ~ 1 2

execute if entity @s[scores={ArrowCount=470}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"You're heartless!","color":"white"}]
execute if entity @s[scores={ArrowCount=470}] as @e[type=armor_stand,tag=Koume2] at @s run playsound minecraft:entity.llama.angry hostile @a ~ ~ ~ 1 2

execute if entity @s[scores={ArrowCount=490}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"You ungrateful...","color":"white"}]
execute if entity @s[scores={ArrowCount=490}] run playsound minecraft:entity.llama.angry hostile @a ~ ~ ~ 1 2

execute if entity @s[scores={ArrowCount=510..}] run tp @s ~ ~.2 ~
execute if entity @s[scores={ArrowCount=510..}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~.2 ~

execute if entity @s[scores={ArrowCount=545}] run tellraw @a ["",{"text":"Kotake & Koume: ","color":"gold"},{"text":"We'll come back to haunt you!","color":"white"}]
execute if entity @s[scores={ArrowCount=545}] run playsound minecraft:entity.llama.angry hostile @a ~ ~ ~ 1 1.6

execute if entity @s[scores={ArrowCount=600}] run function ocarina_of_time:music/spirit_temple
execute if entity @s[scores={ArrowCount=600}] run fill -29 140 765 -25 140 761 minecraft:chiseled_red_sandstone
execute if entity @s[scores={ArrowCount=600}] run clone -34 116 769 -34 116 769 -39 123 775
execute if entity @s[scores={ArrowCount=600}] run fill -25 117 763 -25 117 763 minecraft:gold_block
execute if entity @s[scores={ArrowCount=600}] run tag @a add SpiritMedallion
execute if entity @s[scores={ArrowCount=600}] run fill -16 122 751 -14 122 751 minecraft:light_blue_concrete
execute if entity @s[scores={ArrowCount=600}] run fill -15 122 750 -15 122 752 minecraft:light_blue_concrete
execute if entity @s[scores={ArrowCount=600}] run fill -26 124 766 -28 124 768 minecraft:air
execute if entity @s[scores={ArrowCount=600}] run tag @a remove Boss
