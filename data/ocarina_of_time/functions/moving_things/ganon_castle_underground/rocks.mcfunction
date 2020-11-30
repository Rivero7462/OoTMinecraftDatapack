execute if entity @s[tag=Rock1] run scoreboard players add @s timer 1

execute if entity @s[tag=Rock1] at @s if entity @s[scores={timer=1}] run tp @s -570 18.75 1982.0
execute if entity @s[tag=Rock1] at @s if entity @s[scores={timer=2..12}] run tp @s ~.2 ~ ~
execute if entity @s[tag=Rock1] at @s if entity @s[scores={timer=13..44}] run tp @s ~.15 ~ ~-.15
execute if entity @s[tag=Rock1] at @s if entity @s[scores={timer=45..70}] run tp @s ~ ~ ~-.2
execute if entity @s[tag=Rock1] at @s if entity @s[scores={timer=71..102}] run tp @s ~-.15 ~ ~-.15
execute if entity @s[tag=Rock1] at @s if entity @s[scores={timer=103..128}] run tp @s ~-.2 ~ ~
execute if entity @s[tag=Rock1] at @s if entity @s[scores={timer=129..162}] run tp @s ~-.15 ~ ~.15
execute if entity @s[tag=Rock1] at @s if entity @s[scores={timer=163..186}] run tp @s ~ ~ ~.2
execute if entity @s[tag=Rock1] at @s if entity @s[scores={timer=187..219}] run tp @s ~.15 ~ ~.15
execute if entity @s[tag=Rock1] at @s if entity @s[scores={timer=220..233}] run tp @s ~.2 ~ ~

execute if entity @s[tag=Rock2] run scoreboard players add @s lifetime 1

execute if entity @s[tag=Rock2] at @s if entity @s[scores={lifetime=1}] run tp @s -570.5 18.75 1967.2
execute if entity @s[tag=Rock2] at @s if entity @s[scores={lifetime=2..12}] run tp @s ~-.2 ~ ~
execute if entity @s[tag=Rock2] at @s if entity @s[scores={lifetime=13..44}] run tp @s ~-.15 ~ ~.15
execute if entity @s[tag=Rock2] at @s if entity @s[scores={lifetime=45..70}] run tp @s ~ ~ ~.2
execute if entity @s[tag=Rock2] at @s if entity @s[scores={lifetime=71..102}] run tp @s ~.15 ~ ~.15
execute if entity @s[tag=Rock2] at @s if entity @s[scores={lifetime=103..128}] run tp @s ~.2 ~ ~
execute if entity @s[tag=Rock2] at @s if entity @s[scores={lifetime=129..162}] run tp @s ~.15 ~ ~-.15
execute if entity @s[tag=Rock2] at @s if entity @s[scores={lifetime=163..186}] run tp @s ~ ~ ~-.2
execute if entity @s[tag=Rock2] at @s if entity @s[scores={lifetime=187..219}] run tp @s ~-.15 ~ ~-.15
execute if entity @s[tag=Rock2] at @s if entity @s[scores={lifetime=220..233}] run tp @s ~-.2 ~ ~

execute if entity @s[tag=Rock1] at @s if entity @s[scores={timer=233..}] run scoreboard players set @e[type=armor_stand,tag=Rock2] lifetime 0
execute if entity @s[tag=Rock1] at @s if entity @s[scores={timer=233..}] run scoreboard players set @s timer 0
