tp @s 2042 151 1355
tp @e[type=armor_stand,tag=Biggoron] 2041.7 159.5 1354.7
fill 2040 146 1358 2045 150 1353 minecraft:air
execute unless entity @a[distance=..9] run tag @s remove stoptext

#Biggoron
#1
execute if entity @s[scores={text=1}] if entity @a[distance=..9] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Biggoron: ","color":"gold"},{"text":"My brotherrrr...opened a new storrrre... It's Medigoron's Blade Storrrrrrrre... Howeverrrrr...I am betterrrrrr at making bladessssss. Hylian carpenterrrrrs praise me forrrrrr my skillssssss. I'm not lyinnnnng..."}]
execute if entity @s[scores={text=1}] if entity @a[distance=..9] run tag @s add stoptext
#2
execute if entity @s[scores={text=2}] if entity @a[distance=..9] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Biggoron:","color":"gold"},{"text":" My eyes arrrrrre still botherrrrrring me... Please help...and thank King Zorrrra on my behalf..."}]
execute if entity @s[scores={text=2}] if entity @a[distance=..9] run tag @s add stoptext
#3
execute if entity @s[scores={text=3}] if entity @a[distance=..9] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Biggoron: ","color":"gold"},{"text":"Not yet... Hey, you... You arrrre impatient..."}]
execute if entity @s[scores={text=3}] if entity @a[distance=..9] run tag @s add stoptext
#4
execute if entity @s[scores={text=4}] if entity @a[distance=..9] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Biggoron: ","color":"gold"},{"text":"Yourrrr sworrrrd is my finest worrrrk!"}]
execute if entity @s[scores={text=4}] if entity @a[distance=..9] run tag @s add stoptext
