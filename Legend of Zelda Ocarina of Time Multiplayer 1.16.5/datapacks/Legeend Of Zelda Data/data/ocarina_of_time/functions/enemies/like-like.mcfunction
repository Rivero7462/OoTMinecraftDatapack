execute unless entity @s[team=BladeTrap] run team join BladeTrap @s

#Scores
execute if entity @s[tag=Suck] unless entity @s[tag=Stun] run scoreboard players add @s timer 1
execute if entity @s[tag=Eaten] unless entity @s[tag=Stun] run scoreboard players add @s lifetime 1

#Attack
execute if entity @a[distance=..7] run tag @s add Attack
execute unless entity @a[distance=..7] run tag @s remove Attack
execute unless entity @s[tag=Stun] if entity @s[tag=Attack] unless entity @s[tag=Eaten] unless entity @s[scores={timer=1..60}] facing entity @p feet rotated ~ 0 unless block ^ ^.5 ^1 #ocarina_of_time:like_like unless block ^ ^-.5 ^ minecraft:air if block ^ ^.5 ^1 minecraft:air run tp @s ^ ^ ^.05
execute if entity @s[tag=Attack] unless entity @s[tag=Eaten] unless entity @s[scores={timer=1..60}] facing entity @p feet rotated ~ 0 if block ^ ^-.5 ^ minecraft:air run tp @s ^ ^-.5 ^
execute if entity @s[tag=Attack] unless entity @s[tag=Eaten] unless entity @s[scores={timer=1..60}] facing entity @p feet rotated ~ 0 if block ^ ^.5 ^1 #ocarina_of_time:like_like run tp @s ^ ^.5 ^.05

#Suck
execute unless entity @s[tag=Stun] unless entity @s[tag=Eaten] unless entity @s[scores={timer=61..}] if entity @a[distance=..2] run tag @s add Suck
execute if entity @s[scores={timer=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:tube_coral_fan,Count:1b,tag:{CustomModelData:2}}]}
execute if entity @s[scores={timer=1..60}] facing entity @p feet run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={timer=60}] run data merge entity @s {ArmorItems:[{},{},{},{id:tube_coral_fan,Count:1b,tag:{CustomModelData:1}}]}

execute if entity @s[scores={timer=100..}] run tag @s remove Suck
execute if entity @s[scores={timer=100..}] run scoreboard players set @s timer 0

#Eaten
execute unless entity @s[scores={lifetime=1..}] unless entity @s[tag=Stun] if entity @a[distance=..1] run tag @s add Eaten
execute unless entity @s[scores={lifetime=1..}] unless entity @s[tag=Stun] if entity @a[distance=..1] run tag @a add NoOcarina
execute unless entity @s[scores={lifetime=1..}] unless entity @s[tag=Stun] if entity @s[tag=Suck] if entity @a[distance=..1.8] run tag @s add Eaten
execute unless entity @s[scores={lifetime=1..}] unless entity @s[tag=Stun] if entity @s[tag=Suck] if entity @a[distance=..1.8] run tag @a add NoOcarina

execute if entity @s[scores={lifetime=1}] run tag @s remove Suck
execute if entity @s[scores={lifetime=1}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=1}] run data merge entity @s {Invulnerable:1b,ArmorItems:[{},{},{},{id:tube_coral_fan,Count:1b,tag:{CustomModelData:1}}]}

execute if entity @s[scores={lifetime=1}] run data merge entity @s {NoGravity:1b}
execute unless entity @a[scores={ResetHealth=1..}] if entity @s[scores={lifetime=1..113}] unless entity @a[distance=..0.1] at @a facing entity @s feet rotated ~ 0 if block ^ ^1 ^.1 minecraft:air run tp @a ^ ^ ^.1 ~ ~
execute unless entity @a[scores={ResetHealth=1..}] if entity @s[scores={lifetime=1..113}] unless entity @a[distance=..0.3] at @a facing entity @s feet rotated ~ 0 if block ^ ^1 ^.1 minecraft:air run tp @a ^ ^ ^.2 ~ ~
execute if entity @s[scores={lifetime=1..100}] run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={lifetime=114}] if block ^ ^1 ^1 minecraft:air run tp @a ^ ^ ^1
execute if entity @s[scores={lifetime=114}] unless block ^ ^1 ^1 minecraft:air if block ^ ^1 ^-1 minecraft:air run tp @a ^ ^ ^-1
execute if entity @s[scores={lifetime=114}] unless block ^ ^1 ^-1 minecraft:air unless block ^ ^1 ^1 minecraft:air if block ^1 ^1 ^ minecraft:air run tp @a ^1 ^ ^
execute if entity @s[scores={lifetime=114}] unless block ^1 ^1 ^ minecraft:air unless block ^ ^1 ^-1 minecraft:air unless block ^ ^1 ^1 minecraft:air if block ^-1 ^1 ^ minecraft:air run tp @a ^-1 ^ ^
execute if entity @s[scores={lifetime=114}] run playsound minecraft:block.dispenser.launch hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={lifetime=115}] run effect give @a minecraft:wither 1 1 true
execute if entity @s[scores={lifetime=115}] run data merge entity @s {Rotation:[0f,0f],NoAI:1b,NoGravity:0b,Invulnerable:0b,Attributes:[{Name:"generic.attack_damage",Base:0}]}
execute if entity @s[scores={lifetime=115}] run tag @a remove NoOcarina
execute if entity @s[scores={lifetime=150}] run tag @s remove Eaten
execute if entity @s[scores={lifetime=150..}] run scoreboard players set @s lifetime 0

execute if entity @a[scores={ResetHealth=1..}] run tag @a remove NoOcarina
execute if entity @a[scores={ResetHealth=1..}] run kill @s

#Loot Table
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}}]}] unless entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{ZoraTunic:1b}}]}] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/like_like_2"}
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}}]}] unless entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{ZoraTunic:1b}}]}] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/like_like_2"}
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/like_like_3"}
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}}]}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/like_like_4"}
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}}]}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/like_like_4"}
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{ZoraTunic:1b}}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/like_like_5"}
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{ZoraTunic:1b}}]}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/like_like_5"}
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{ZoraTunic:1b}}]}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/like_like_6"}
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{ZoraTunic:1b}}]}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/like_like_6"}

#ChestPlate
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run tellraw @a ["",{"text":"The ","color":"aqua"},{"text":"tunic ","color":"white"},{"text":"you were wearing is gone!","color":"aqua"}]
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{ZoraTunic:1b}}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run tellraw @a ["",{"text":"The ","color":"aqua"},{"text":"tunic ","color":"white"},{"text":"you were wearing is gone!","color":"aqua"}]
#Shield
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}}]}] unless entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{ZoraTunic:1b}}]}] run tellraw @a ["",{"text":"Your ","color":"aqua"},{"text":"shield ","color":"white"},{"text":"is gone!","color":"aqua"}]
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}}]}] unless entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{ZoraTunic:1b}}]}] run tellraw @a ["",{"text":"Your ","color":"aqua"},{"text":"shield ","color":"white"},{"text":"is gone!","color":"aqua"}]
#Both
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{ZoraTunic:1b}}]}] run tellraw @a ["",{"text":"Your ","color":"aqua"},{"text":"shield ","color":"white"},{"text":"is gone! The ","color":"aqua"},{"text":"tunic ","color":"white"},{"text":"you were wearing also has been taken!","color":"aqua"}]
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}}]}] run tellraw @a ["",{"text":"Your ","color":"aqua"},{"text":"shield ","color":"white"},{"text":"is gone! The ","color":"aqua"},{"text":"tunic ","color":"white"},{"text":"you were wearing also has been taken!","color":"aqua"}]
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{ZoraTunic:1b}}]}] run tellraw @a ["",{"text":"Your ","color":"aqua"},{"text":"shield ","color":"white"},{"text":"is gone! The ","color":"aqua"},{"text":"tunic ","color":"white"},{"text":"you were wearing also has been taken!","color":"aqua"}]
execute if entity @s[scores={lifetime=1}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}}]}] run tellraw @a ["",{"text":"Your ","color":"aqua"},{"text":"shield ","color":"white"},{"text":"is gone! The ","color":"aqua"},{"text":"tunic ","color":"white"},{"text":"you were wearing also has been taken!","color":"aqua"}]
#Clear
execute if entity @s[scores={lifetime=100}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}}]}] run clear @a minecraft:leather_chestplate{display:{color:14942208,Name:"{\"text\":\"Goron Tunic\"}"},Unbreakable:1b,GoronTunic:1b,HideFlags:46} 1
execute if entity @s[scores={lifetime=100}] if entity @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{ZoraTunic:1b}}]}] run clear @a minecraft:leather_chestplate{display:{color:1521151,Name:"{\"text\":\"Zora Tunic\"}"},Unbreakable:1b,ZoraTunic:1b,HideFlags:46} 1
execute if entity @s[scores={lifetime=100}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run clear @a minecraft:shield{Unbreakable:1b,Damage:2,display:{Name:"\"Hylian Shield\""}} 1
execute if entity @s[scores={lifetime=100}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run clear @a minecraft:shield{Unbreakable:1b,Damage:2,display:{Name:"\"Hylian Shield\""}} 1

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[scores={time=1..60}] unless entity @a[scores={click=0..}] run particle minecraft:falling_dust blue_wool ~ ~1 ~ .5 .3 .5 1 1
execute if entity @s[scores={time=61}] run tag @s remove Stun
execute if entity @s[scores={time=61}] run scoreboard players set @s time 0

#Slingshot
execute if entity @e[type=snowball,distance=..2] run effect give @s minecraft:resistance 1 1 true
execute if entity @e[type=snowball,distance=..2] run effect give @s minecraft:instant_health 1 0 true

#Sounds
scoreboard players add @s GameTimer 1
execute unless entity @s[tag=Suck] unless entity @s[tag=Eaten] if entity @s[scores={GameTimer=20}] run playsound minecraft:block.honey_block.break hostile @a ~ ~ ~ .5 .5
execute unless entity @s[tag=Suck] unless entity @s[tag=Eaten] if entity @s[scores={GameTimer=20..}] run scoreboard players set @s GameTimer 0
execute unless entity @s[scores={lifetime=115..}] if entity @s[tag=Eaten,scores={GameTimer=10}] run playsound minecraft:block.honey_block.hit hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=Eaten,scores={GameTimer=10..}] run scoreboard players set @s GameTimer 0
