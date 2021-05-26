tag @e[type=zombie,tag=DarkLink] remove Resist
effect clear @e[type=zombie,tag=DarkLink] minecraft:resistance
effect give @e[type=zombie,tag=DarkLink] minecraft:instant_health 1 0 true
scoreboard players set @s timer 2
tag @s add Fall
