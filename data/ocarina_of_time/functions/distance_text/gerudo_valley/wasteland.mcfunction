#Carpet Master
#1
execute as @s[tag=CarpetMaster,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Carpet Master: ","color":"gold"},{"text":"Welcome! I am selling stuff, strange and rare, from all over the world to everybody. Today's special is... A dangerous, running object! Terrifying! I won't tell you what it is until I see the money... How about "},{"text":"200 Rupees","color":"red"},{"text":"?"}]
execute as @s[tag=CarpetMaster,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
