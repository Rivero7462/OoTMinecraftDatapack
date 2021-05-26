execute if entity @s[nbt={Inventory:[{tag:{Heart:1b}}]}] unless entity @s[tag=HeartCoolDown] run function ocarina_of_time:items/hearts/heart_cooldown

scoreboard players add @s timer 1

execute if entity @s[scores={timer=4..}] run effect clear @s minecraft:regeneration
execute if entity @s[scores={timer=4..}] run tag @s remove HeartCoolDown
execute if entity @s[scores={timer=4..}] run scoreboard players set @s timer 0
