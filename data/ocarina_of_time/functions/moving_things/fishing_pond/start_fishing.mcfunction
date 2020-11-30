fill 433 66 2719 433 66 2719 minecraft:barrier
execute unless entity @a[tag=Adult] unless block 411 57 2720 minecraft:gold_block run fill 411 57 2721 411 57 2721 minecraft:gold_block
scoreboard players set @e[type=armor_stand,tag=Fisherman1] text 0
execute as @e[type=armor_stand,tag=Fisherman1] if entity @a[tag=Adult] run tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"You can only carry one fish at a time. Throw the fish back if you want a bigger one. The biggest fish ever caught here was "},{"score":{"name":"@s","objective":"lifetime"},"color":"red"},{"text":" pounds","color":"red"},{"text":"."}]
execute as @e[type=armor_stand,tag=Fisherman1] unless entity @a[tag=Adult] run tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"You can only carry one fish at a time. Throw the fish back if you want a bigger one. The biggest fish ever caught here was "},{"score":{"name":"@s","objective":"GameTimer"},"color":"red"},{"text":" pounds","color":"red"},{"text":"."}]
tag @a add StartFishing
