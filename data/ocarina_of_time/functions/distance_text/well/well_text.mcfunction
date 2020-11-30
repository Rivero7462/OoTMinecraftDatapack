#Skeleton 1
execute as @s[tag=Skeleton1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"I can hear the spirits whispering in this room... \"","color":"aqua"},{"text":"Look for the eye of truth..."},{"text":"\" That's what they are saying!","color":"aqua"}]
execute as @s[tag=Skeleton1,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Skeleton 2
execute as @s[tag=Skeleton2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"I can hear the spirits whispering in this room... \"","color":"aqua"},{"text":"Look for the eye of truth..."},{"text":"\" That's what they are saying!","color":"aqua"}]
execute as @s[tag=Skeleton2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
