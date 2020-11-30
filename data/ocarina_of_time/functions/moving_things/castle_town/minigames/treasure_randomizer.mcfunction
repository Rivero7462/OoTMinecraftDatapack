
#1
scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run data merge block 865 51 1425 {Items:[{Slot:13b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]}
execute if entity @s[scores={timer=1}] run data merge block 859 51 1425 {Items:[{Slot:13b,id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}]}
execute if entity @s[scores={timer=3}] run data merge block 865 51 1425 {Items:[{Slot:13b,id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}]}
execute if entity @s[scores={timer=3}] run data merge block 859 51 1425 {Items:[{Slot:13b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]}
execute if entity @s[scores={timer=3}] run scoreboard players set @s timer 0

#2
scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run data merge block 865 51 1440 {Items:[{Slot:13b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]}
execute if entity @s[scores={lifetime=1}] run data merge block 859 51 1440 {Items:[{Slot:13b,id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}]}
execute if entity @s[scores={lifetime=4}] run data merge block 865 51 1440 {Items:[{Slot:13b,id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}]}
execute if entity @s[scores={lifetime=4}] run data merge block 859 51 1440 {Items:[{Slot:13b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]}
execute if entity @s[scores={lifetime=8}] run scoreboard players set @s lifetime 0

#3
scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run data merge block 865 51 1455 {Items:[{Slot:13b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]}
execute if entity @s[scores={time=1}] run data merge block 859 51 1455 {Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}}]}
execute if entity @s[scores={time=6}] run data merge block 865 51 1455 {Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}}]}
execute if entity @s[scores={time=6}] run data merge block 859 51 1455 {Items:[{Slot:13b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]}
execute if entity @s[scores={time=11}] run scoreboard players set @s time 0

#4
scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run data merge block 865 51 1470 {Items:[{Slot:13b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]}
execute if entity @s[scores={GameTimer=1}] run data merge block 859 51 1470 {Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}}]}
execute if entity @s[scores={GameTimer=7}] run data merge block 865 51 1470 {Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}}]}
execute if entity @s[scores={GameTimer=7}] run data merge block 859 51 1470 {Items:[{Slot:13b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]}
execute if entity @s[scores={GameTimer=13}] run scoreboard players set @s GameTimer 0

#5
scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=1}] run data merge block 865 51 1485 {Items:[{Slot:13b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]}
execute if entity @s[scores={ArrowCount=1}] run data merge block 859 51 1485 {Items:[{Slot:13b,id:"minecraft:red_dye",Count:1b,tag:{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}}]}
execute if entity @s[scores={ArrowCount=3}] run data merge block 865 51 1485 {Items:[{Slot:13b,id:"minecraft:red_dye",Count:1b,tag:{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}}]}
execute if entity @s[scores={ArrowCount=3}] run data merge block 859 51 1485 {Items:[{Slot:13b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]}
execute if entity @s[scores={ArrowCount=5}] run scoreboard players set @s ArrowCount 0
