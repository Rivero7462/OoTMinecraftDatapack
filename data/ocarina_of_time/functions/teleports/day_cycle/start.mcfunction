execute store result score @s time run time query daytime
execute if entity @s[scores={time=13001..23000}] run time add 6
execute if entity @s[scores={time=23001..24000}] run time add 5
execute if entity @s[scores={time=0..13000}] run time add 5