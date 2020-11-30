#Wall 1
execute as @s[tag=Plaque1,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a {"text":"If you want to proceed in the past, you should return here with the pure heart of a child."}
execute as @s[tag=Plaque1,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext

#Wall 2
execute as @s[tag=Plaque2,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"If you want to travel in the future, you should return here with the "},{"text":"power of silver","color":"blue"},{"text":" from the past."}]
execute as @s[tag=Plaque2,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext

#Nabooru
#1
execute as @s[tag=Nabooru1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @a add MeetNabooru
execute as @s[tag=Nabooru1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run scoreboard players set @s text 0
#2
execute as @s[tag=Nabooru1,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" If you can successfully get the "},{"text":"Silver Gauntlets","color":"blue"},{"text":"... "},{"text":"I'll do something great for you!","color":"white"}]
execute as @s[tag=Nabooru1,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
