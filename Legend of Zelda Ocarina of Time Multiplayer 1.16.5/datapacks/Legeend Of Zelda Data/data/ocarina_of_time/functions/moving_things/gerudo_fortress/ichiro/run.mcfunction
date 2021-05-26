scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run tp @s ~-.25 ~ ~ 90 ~
execute if entity @s[scores={lifetime=2..16}] run tp @s ~-.25 ~ ~
execute if entity @s[scores={lifetime=17}] run tp @s ~ ~ ~.25 0 ~
execute if entity @s[scores={lifetime=18..28}] run tp @s ~ ~ ~.25
execute if entity @s[scores={lifetime=29}] run tp @s ~-.25 ~ ~ 90 ~
execute if entity @s[scores={lifetime=30..76}] run tp @s ~-.25 ~ ~
execute if entity @s[scores={lifetime=77}] run tp @s ~ ~ ~.25 0 ~
execute if entity @s[scores={lifetime=78..120}] run tp @s ~ ~ ~.25

execute if entity @s[scores={lifetime=120..}] run tp @s -111 38 1993 0 ~
execute if entity @s[scores={lifetime=120..}] run tag @s remove Run
execute if entity @s[scores={lifetime=120..}] run tag @s remove Rescue
execute if entity @s[scores={lifetime=120..}] run scoreboard players set @s lifetime 0
