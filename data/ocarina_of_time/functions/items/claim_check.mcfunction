scoreboard objectives add ClaimCheck dummy

execute if entity @s[scores={time=23598..23605}] run scoreboard players add @s ClaimCheck 1
execute if entity @s[scores={time=23598..23605}] run time set 23606

execute if entity @s[scores={ClaimCheck=3..}] run tag @s add GetSword
execute if entity @s[scores={ClaimCheck=3..}] run tag @s remove ClaimCheckStart
execute if entity @s[scores={ClaimCheck=3..}] run scoreboard objectives remove ClaimCheck
