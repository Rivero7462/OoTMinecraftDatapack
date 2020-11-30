#Scores
execute if entity @s[tag=On] run scoreboard players add @s timer 1

#On
execute unless entity @s[tag=Off] run tag @s add On
execute if entity @s[nbt={HurtTime:9s}] run tag @s remove Off
execute if entity @s[nbt={HurtTime:9s}] run tag @s add On
execute unless entity @s[tag=Special] if entity @s[tag=On] run data merge entity @s {ArmorItems:[{},{},{},{id:cyan_stained_glass_pane,Count:1b,tag:{CustomModelData:1}}]}
execute if entity @s[tag=Special] if entity @s[tag=On] run data merge entity @s {ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:16}}]}

#Off
execute if entity @s[tag=Off] unless entity @s[tag=Special] run data merge entity @s {ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:1}}]}
execute if entity @s[tag=Off] if entity @s[tag=Special] run data merge entity @s {ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:15}}]}
execute if entity @s[tag=Off] run tag @s remove On
execute if entity @s[tag=Off] run scoreboard players set @s timer 0

#Sound
execute if entity @s[scores={timer=1}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.7

#summon minecraft:zombie 3128 94 1963 {Tags:["Switch1","Switch","Invisible","Resist"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f]}
