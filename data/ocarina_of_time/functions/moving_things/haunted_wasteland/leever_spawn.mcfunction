scoreboard players add @s lifetime 1

execute as @e[type=armor_stand,tag=Leever1] at @s unless entity @e[type=zombie,tag=Leever1] run kill @s
execute as @e[type=armor_stand,tag=Leever2] at @s unless entity @e[type=zombie,tag=Leever2] run kill @s
execute as @e[type=armor_stand,tag=Leever3] at @s unless entity @e[type=zombie,tag=Leever3] run kill @s
execute as @e[type=armor_stand,tag=Leever4] at @s unless entity @e[type=zombie,tag=Leever4] run kill @s

#Spawn
#Special
execute at @a if entity @s[scores={lifetime=1}] unless entity @e[type=zombie,tag=Leever4] if entity @s[scores={timer=10..}] run summon minecraft:armor_stand ~ ~-5 ~ {Tags:["Leever4","Special","Leever"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:86}}]}
execute at @a if entity @s[scores={lifetime=1}] unless entity @e[type=zombie,tag=Leever4] if entity @s[scores={timer=10..}] run summon minecraft:zombie ~ ~-5 ~ {Tags:["Leever","Leever4","Special","Invisible","Fire"],Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/wallmaster",Health:20,Attributes:[{Name:"generic.max_health",Base:20}]}
execute if entity @s[scores={lifetime=1}] if entity @s[scores={timer=10..}] run scoreboard players set @s timer 0
#1
execute if entity @s[scores={lifetime=1}] unless entity @e[type=zombie,tag=Leever4] unless entity @e[type=zombie,tag=Leever1] run scoreboard players add @s timer 1
execute at @a if entity @s[scores={lifetime=1}] unless entity @e[type=zombie,tag=Leever4] unless entity @e[type=zombie,tag=Leever1] unless entity @s[scores={timer=10..}] run summon minecraft:armor_stand ~ ~-5 ~ {Tags:["Leever1","Leever"],Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:85}}]}
execute at @a if entity @s[scores={lifetime=1}] unless entity @e[type=zombie,tag=Leever4] unless entity @e[type=zombie,tag=Leever1] unless entity @s[scores={timer=10..}] run summon minecraft:zombie ~ ~-5 ~ {Tags:["Leever","Leever1","Invisible","Fire"],IsBaby:1b,Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/keese",Health:7}
#2
execute if entity @s[scores={lifetime=1}] unless entity @e[type=zombie,tag=Leever4] unless entity @e[type=zombie,tag=Leever2] run scoreboard players add @s timer 1
execute at @a if entity @s[scores={lifetime=1}] unless entity @e[type=zombie,tag=Leever4] unless entity @e[type=zombie,tag=Leever2] unless entity @s[scores={timer=10..}] run summon minecraft:armor_stand ~ ~-5 ~ {Tags:["Leever2","Leever"],Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:85}}]}
execute at @a if entity @s[scores={lifetime=1}] unless entity @e[type=zombie,tag=Leever4] unless entity @e[type=zombie,tag=Leever2] unless entity @s[scores={timer=10..}] run summon minecraft:zombie ~ ~-5 ~ {Tags:["Leever","Leever2","Invisible","Fire"],IsBaby:1b,Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/keese",Health:7}
#3
execute if entity @s[scores={lifetime=1}] unless entity @e[type=zombie,tag=Leever4] unless entity @e[type=zombie,tag=Leever3] run scoreboard players add @s timer 1
execute at @a if entity @s[scores={lifetime=1}] unless entity @e[type=zombie,tag=Leever4] unless entity @e[type=zombie,tag=Leever3] unless entity @s[scores={timer=10..}] run summon minecraft:armor_stand ~ ~-5 ~ {Tags:["Leever3","Leever"],Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:85}}]}
execute at @a if entity @s[scores={lifetime=1}] unless entity @e[type=zombie,tag=Leever4] unless entity @e[type=zombie,tag=Leever3] unless entity @s[scores={timer=10..}] run summon minecraft:zombie ~ ~-5 ~ {Tags:["Leever","Leever3","Invisible","Fire"],IsBaby:1b,Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/keese",Health:7}

execute if entity @s[scores={lifetime=100..}] run scoreboard players set @s lifetime 0
