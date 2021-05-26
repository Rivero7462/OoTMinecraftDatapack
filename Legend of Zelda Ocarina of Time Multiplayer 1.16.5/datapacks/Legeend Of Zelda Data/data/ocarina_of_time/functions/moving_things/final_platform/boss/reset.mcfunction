tag @s remove BigStun
tag @s remove Stun
scoreboard players set @s time 0
execute if entity @s[tag=Cooldown] run tag @s add Lost2
execute if entity @s[tag=Cooldown] run scoreboard players set @s lifetime 40
