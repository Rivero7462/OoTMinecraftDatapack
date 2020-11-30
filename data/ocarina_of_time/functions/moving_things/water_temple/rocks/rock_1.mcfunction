scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 1084 49 3081.0
execute at @s if entity @s[scores={timer=2..39}] run tp @s ~ ~-.3 ~
execute at @s if entity @s[scores={timer=40..105}] run tp @s ~-.2 ~ ~
execute at @s if entity @s[scores={timer=106..124}] run tp @s ~ ~-.3 ~
execute at @s if entity @s[scores={timer=125..204}] run tp @s ~-.2 ~ ~
execute at @s if entity @s[scores={timer=205..223}] run tp @s ~ ~-.3 ~
execute at @s if entity @s[scores={timer=224}] run tp @s 1083 28 3074
execute at @s if entity @s[scores={timer=226}] run tp @s 1079 52 3074

execute at @s if entity @s[scores={timer=227..}] run scoreboard players set @s timer 0
