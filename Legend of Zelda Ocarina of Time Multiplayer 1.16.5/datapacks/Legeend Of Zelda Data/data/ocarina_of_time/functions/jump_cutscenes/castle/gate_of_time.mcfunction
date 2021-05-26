execute unless entity @s[scores={timer=0..}] run fill 951 9 1395 951 9 1395 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 950 9 1394 950 9 1394 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 951 9 1393 951 9 1393 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 952 9 1394 952 9 1394 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 957 6 1394 957 6 1394 minecraft:gold_block
execute unless entity @s[scores={timer=0..}] run tag @a add NoOcarina
execute unless entity @s[scores={timer=0..}] run tp @s 951 8 1394

scoreboard players add @s timer 1

execute if entity @s[scores={timer=40}] run summon minecraft:item 954 12 1392 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Emerald\"}"},Unbreakable:1b,Damage:6,Emerald:1b}},PickupDelay:100,Tags:["NoPickup"]}
execute if entity @s[scores={timer=40}] run summon minecraft:item 954 12 1394 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Ruby\"}"},Unbreakable:1b,Damage:7,Ruby:1b}},PickupDelay:100,Tags:["NoPickup"]}
execute if entity @s[scores={timer=40}] run summon minecraft:item 954 12 1396 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Saphire\"}"},Unbreakable:1b,Damage:8,Sapphire:1b}},PickupDelay:100,Tags:["NoPickup"]}

execute if entity @s[scores={timer=70}] run fill 962 16 1391 962 19 1397 minecraft:gold_block replace minecraft:black_wool

execute if entity @s[scores={timer=80}] run fill 962 14 1394 962 9 1394 minecraft:air
execute if entity @s[scores={timer=80}] run fill 962 9 1394 962 9 1394 minecraft:quartz_slab
execute if entity @s[scores={timer=90}] run fill 962 14 1393 962 9 1393 minecraft:air
execute if entity @s[scores={timer=90}] run fill 962 14 1395 962 9 1395 minecraft:air
execute if entity @s[scores={timer=90}] run fill 962 9 1393 962 9 1395 minecraft:quartz_slab
execute if entity @s[scores={timer=100}] run fill 962 9 1392 962 14 1392 minecraft:air
execute if entity @s[scores={timer=100}] run fill 962 9 1396 962 14 1396 minecraft:air
execute if entity @s[scores={timer=100}] run fill 962 9 1396 962 9 1392 minecraft:quartz_slab
execute if entity @s[scores={timer=110}] run fill 962 9 1391 962 14 1391 minecraft:air
execute if entity @s[scores={timer=110}] run fill 962 9 1397 962 14 1397 minecraft:air
execute if entity @s[scores={timer=110}] run fill 962 9 1397 962 9 1391 minecraft:quartz_slab

execute if entity @s[scores={timer=110}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=110}] run fill 950 9 1393 952 9 1395 minecraft:air
execute if entity @s[scores={timer=110}] run tag @s remove GateOfTime
execute if entity @s[scores={timer=110}] run scoreboard players set @s timer 0