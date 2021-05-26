scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..200}] run weather thunder

execute if entity @s[scores={timer=201}] run weather clear
execute if entity @s[scores={timer=201}] run tag @s remove Rain
execute if entity @s[scores={timer=201}] run scoreboard players set @s timer 0
