execute store result score @s GreenRupee run clear @a minecraft:lime_dye 0
execute store result score @s BlueRupee run clear @a minecraft:lapis_lazuli 0
execute store result score @s RedRupee run clear @a minecraft:red_dye 0
execute store result score @s PurpleRupee run clear @a minecraft:purple_dye 0
execute store result score @s HugeRupee run clear @a minecraft:yellow_dye 0
execute store result score @s OrangeRupee run clear @a minecraft:orange_dye 0

scoreboard players operation @s BlueRupee *= 5 BlueRupee2
scoreboard players operation @s RedRupee *= 20 RedRupee2
scoreboard players operation @s PurpleRupee *= 50 PurpleRupee2
scoreboard players operation @s HugeRupee *= 200 HugeRupee2
scoreboard players operation @s OrangeRupee *= 200 OrangeRupee2
scoreboard players operation @s RupeeCount = @s RedRupee
scoreboard players operation @s RupeeCount += @s GreenRupee
scoreboard players operation @s RupeeCount += @s BlueRupee
scoreboard players operation @s RupeeCount += @s PurpleRupee
scoreboard players operation @s RupeeCount += @s HugeRupee
scoreboard players operation @s RupeeCount += @s OrangeRupee

execute unless entity @s[tag=AdultWallet] unless entity @s[tag=GiantWallet] if entity @s[scores={RupeeCount=100..}] run function ocarina_of_time:items/wallet/child_wallet
execute unless entity @s[tag=GiantWallet] if entity @s[scores={RupeeCount=201..}] run function ocarina_of_time:items/wallet/adult_wallet
execute if entity @s[scores={RupeeCount=501..}] run function ocarina_of_time:items/wallet/giant_wallet

#scoreboard players set 50 PurpleRupee2 50

#GreenRupee
#BlueRupee
#BlueRupee2
#RedRupee
#RedRupee2
#PurpleRupee
#PurpleRupee2
#HugeRupee
#HugeRupee2
#OrangeRupee
#OrangeRupee2
#RupeeCount
