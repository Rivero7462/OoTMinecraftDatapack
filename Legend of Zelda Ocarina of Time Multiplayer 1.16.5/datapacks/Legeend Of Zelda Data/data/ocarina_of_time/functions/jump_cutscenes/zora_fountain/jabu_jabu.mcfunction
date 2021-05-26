execute unless entity @s[scores={lifetime=1..}] run fill 1397 59 1297 1396 59 1285 minecraft:air replace minecraft:orange_tulip
execute unless entity @s[scores={lifetime=1..}] run fill 1389 56 1290 1389 56 1290 minecraft:barrier
execute unless entity @s[scores={lifetime=1..}] run fill 1390 56 1291 1390 56 1291 minecraft:barrier
execute unless entity @s[scores={lifetime=1..}] run fill 1389 56 1292 1389 56 1292 minecraft:barrier
execute unless entity @s[scores={lifetime=1..}] run fill 1388 56 1291 1388 56 1291 minecraft:barrier
execute unless entity @s[scores={lifetime=1..}] run tp @a 1389 55 1291
execute unless entity @s[scores={lifetime=1..}] run tag @a add NoOcarina
execute unless entity @s[scores={lifetime=1..}] run tag @a remove MeetJabuJabu
execute unless entity @s[scores={lifetime=1..}] run tag @a add MeetRuto
execute unless entity @s[scores={lifetime=1..}] run tag @s remove Closed

scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=1..149}] as @e[type=cod,tag=Bottled] at @s run tp @s 1391 55 1291

execute if entity @s[scores={lifetime=50}] run clone 1367 4 1255 1381 19 1269 1395 49 1284
execute if entity @s[scores={lifetime=55}] run clone 1367 4 1273 1381 19 1287 1395 49 1284
execute if entity @s[scores={lifetime=60}] run clone 1367 4 1291 1381 19 1305 1395 49 1284
execute if entity @s[scores={lifetime=65}] run clone 1367 4 1309 1381 19 1323 1395 49 1284
execute if entity @s[scores={lifetime=70}] run clone 1367 4 1327 1381 20 1341 1395 49 1284
execute if entity @s[scores={lifetime=75}] run clone 1367 4 1345 1381 21 1359 1395 49 1284
execute if entity @s[scores={lifetime=75}] run tag @s add Open

execute if entity @s[scores={lifetime=75..}] run particle minecraft:crit 1394 58 1291 5 1 2 1 2 normal @p
execute if entity @s[scores={lifetime=150..165}] as @e[type=cod,tag=Bottled] at @s run data merge entity @s {Motion:[0.5,0.1,0.0]}
execute if entity @s[scores={lifetime=166}] run kill @e[type=cod,tag=Bottled]
execute if entity @s[scores={lifetime=231..}] run tag @a remove NoOcarina
execute if entity @s[scores={lifetime=231..}] run fill 1388 56 1292 1390 56 1290 minecraft:air
execute if entity @s[scores={lifetime=231..}] as @a at @s run tp @s ~.5 ~ 1291
