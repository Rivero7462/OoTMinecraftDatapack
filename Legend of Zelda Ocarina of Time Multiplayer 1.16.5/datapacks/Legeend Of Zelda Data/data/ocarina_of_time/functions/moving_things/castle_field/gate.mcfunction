execute if entity @a[nbt={Inventory:[{tag:{OpenGate:1}}]}] run tag @a add OpenGate

execute if entity @a[tag=OpenGate] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"OK, I'll let you pass, quickly! KEEP IT A SECRET FROM EVERYONE."}]
execute if entity @s[scores={timer=1..4}] run clear @a minecraft:paper
execute if entity @s[scores={timer=1..4}] run fill 918 77 942 918 75 942 minecraft:air
execute if entity @s[scores={timer=5..8}] run fill 918 77 941 918 75 941 minecraft:air
execute if entity @s[scores={timer=9..12}] run fill 918 77 940 918 75 940 minecraft:air
execute if entity @s[scores={timer=13..16}] run fill 918 77 939 918 75 939 minecraft:air
execute if entity @s[scores={timer=17..20}] run fill 918 77 938 918 75 938 minecraft:air
execute if entity @s[scores={timer=21..24}] run fill 918 77 937 918 75 937 minecraft:air
execute if entity @s[scores={timer=25..}] run tag @a remove OpenGate
execute if entity @s[scores={timer=25..}] run scoreboard players set @s timer 0