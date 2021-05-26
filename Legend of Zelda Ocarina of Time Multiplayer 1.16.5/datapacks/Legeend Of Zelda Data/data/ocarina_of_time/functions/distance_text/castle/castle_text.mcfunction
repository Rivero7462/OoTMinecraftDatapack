#Zelda
#1
execute as @s[tag=Zelda,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" My Attendant will guide you out of the castle. Don't be afraid to talk to her."}]
execute as @s[tag=Zelda,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @e[type=armor_stand,tag=Impa] 843 88 410
execute as @s[tag=Zelda,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Zelda,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"A Spiritual Stone... You found another one! It is said that the races who hold the Spiritual Stones open their minds only to one who knows the "},{"text":"melody of the Royal Family","color":"blue"},{"text":". But you already know that, don't you?"}]
execute as @s[tag=Zelda,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @e[type=armor_stand,tag=Impa] 843 88 410
execute as @s[tag=Zelda,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Impa
#1
execute as @s[tag=Impa,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" If the castle soldiers find you, there will be trouble. Let me lead you out of the castle."}]
execute as @s[tag=Impa,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @a add ImpaCastleTeleport
execute as @s[tag=Impa,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s 843 75 410
execute as @s[tag=Impa,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
