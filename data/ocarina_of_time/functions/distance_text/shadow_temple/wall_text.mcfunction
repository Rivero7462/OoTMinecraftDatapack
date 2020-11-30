#Wall 1
execute as @s[tag=Text1,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"One who gains the ","color":"white"},{"text":"eye of truth ","color":"red"},{"text":"will be able to see what is hidden in the darkness."}]
execute as @s[tag=Text1,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext

#Wall 2
execute as @s[tag=Text2,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a {"text":"Shadow Temple... Here is gathered Hyrule's bloody history of greed and hatred..."}
execute as @s[tag=Text2,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext

#Wall 3
execute as @s[tag=Text3,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a {"text":"What is hidden in the darkness... Tricks full of ill will... You can't see the way forward..."}
execute as @s[tag=Text3,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
