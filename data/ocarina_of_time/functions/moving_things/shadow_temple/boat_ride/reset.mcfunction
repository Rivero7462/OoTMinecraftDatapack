scoreboard players add @s LoadZone 1
execute if entity @s[scores={LoadZone=1}] run effect give @a minecraft:wither 1 1 true
execute if entity @s[scores={LoadZone=15..}] run fill 1571 63 901 1698 67 890 minecraft:air
execute if entity @s[scores={LoadZone=15..}] run fill 1698 63 901 1793 67 890 minecraft:air
execute if entity @s[scores={LoadZone=15..}] run clone 1773 59 872 1793 67 883 1773 59 889
execute if entity @s[scores={LoadZone=15..}] run kill @e[type=armor_stand,tag=Boat]
execute if entity @s[scores={LoadZone=15..}] run tp @a 1775 58 908 180 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
