#Green
execute store result score @s GreenRupee run clear @a minecraft:lime_dye 0
execute if entity @s[scores={GreenRupee=50..}] run clear @a minecraft:lime_dye 50
execute if entity @s[scores={GreenRupee=50..}] run tag @s add Finish

execute unless entity @s[tag=Finish] if entity @s[scores={GreenRupee=..50}] store result score @s GreenRupee run clear @a minecraft:lime_dye
execute unless entity @s[tag=Finish] run scoreboard players operation @s RupeeCount += @s GreenRupee

#Blue
execute unless entity @s[tag=Finish] store result score @s BlueRupee run clear @a minecraft:lapis_lazuli 0
execute unless entity @s[tag=Finish] if entity @s[scores={BlueRupee=..9}] store result score @s BlueRupee run clear @a minecraft:lapis_lazuli
execute unless entity @s[tag=Finish] if entity @s[scores={BlueRupee=10..}] store result score @s BlueRupee run clear @a minecraft:lapis_lazuli 10
scoreboard players operation @s BlueRupee *= 5 BlueRupee2

execute unless entity @s[tag=Finish] run scoreboard players operation @s RupeeCount += @s BlueRupee

#Count
execute unless entity @s[tag=Finish] if entity @s[scores={RupeeCount=51..}] run function ocarina_of_time:moving_things/fishing_pond/count_rupees

#Red
execute unless entity @s[tag=Finish] store result score @s RedRupee run clear @a minecraft:red_dye 0
execute unless entity @s[tag=Finish] if entity @s[scores={RedRupee=1}] store result score @s RedRupee run clear @a minecraft:red_dye
execute unless entity @s[tag=Finish] if entity @s[scores={RedRupee=2..}] store result score @s RedRupee run clear @a minecraft:red_dye 3
scoreboard players operation @s RedRupee *= 20 RedRupee2

execute unless entity @s[tag=Finish] run scoreboard players operation @s RupeeCount += @s RedRupee

#Count
execute unless entity @s[tag=Finish] if entity @s[scores={RupeeCount=51..}] run function ocarina_of_time:moving_things/fishing_pond/count_rupees

#Purple
execute unless entity @s[tag=Finish] store result score @s PurpleRupee run clear @a minecraft:purple_dye 0
execute unless entity @s[tag=Finish] if entity @s[scores={PurpleRupee=1..}] store result score @s PurpleRupee run clear @a minecraft:purple_dye 1
scoreboard players operation @s PurpleRupee *= 50 PurpleRupee2

execute unless entity @s[tag=Finish] run scoreboard players operation @s RupeeCount += @s PurpleRupee

#Count
execute unless entity @s[tag=Finish] if entity @s[scores={RupeeCount=51..}] run function ocarina_of_time:moving_things/fishing_pond/count_rupees

#Yellow
execute unless entity @s[tag=Finish] store result score @s YellowRupee run clear @a minecraft:yellow_dye 0
execute unless entity @s[tag=Finish] if entity @s[scores={YellowRupee=1..}] store result score @s YellowRupee run clear @a minecraft:yellow_dye 1
scoreboard players operation @s YellowRupee *= 200 YellowRupee2

execute unless entity @s[tag=Finish] run scoreboard players operation @s RupeeCount += @s YellowRupee

#Count
execute unless entity @s[tag=Finish] if entity @s[scores={RupeeCount=51..}] run function ocarina_of_time:moving_things/fishing_pond/count_rupees

#Finish
tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"WHAAAAAT?! Why are you doing this to me? What are you thinking? I'm not going to let you get off that easy! You have to pay me a "},{"text":"50-Rupee","color":"red"},{"text":" fine! Seriously!"}]
scoreboard players set @e[type=armor_stand,tag=Fisherman1] text 0
tag @s add LostCap
tag @a remove StealCap
fill 433 63 2722 433 63 2722 minecraft:gold_block
