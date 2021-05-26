tag @a add Meteors
execute if block -632 24 881 minecraft:iron_bars run scoreboard players set @e[type=armor_stand,tag=PrincessZelda4] lifetime 288
execute if block -632 24 881 minecraft:iron_bars run tp @e[type=armor_stand,tag=PrincessZelda4] -645 24 883
execute if block -632 24 881 minecraft:iron_bars run kill @e[tag=Stalfos]
execute if block -632 24 881 minecraft:iron_bars run kill @e[type=armor_stand,tag=StalfosShield]
execute if block -632 24 881 minecraft:iron_bars run fill -641 24 885 -643 25 887 minecraft:air
execute if entity @a[tag=Escape4] run tag @a add Escape3
tag @a remove Escape4
tp @a -649 141 885
