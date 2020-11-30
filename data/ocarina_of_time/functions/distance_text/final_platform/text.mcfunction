#Zelda
#1
execute as @s[tag=PrincessZelda5,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"What was that sound?"}]
execute as @s[tag=PrincessZelda5,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=PrincessZelda5,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Use the "},{"text":"Master Sword","color":"aqua"},{"text":"! Destroy Ganon with the sacred sword!"}]
execute as @s[tag=PrincessZelda5,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
