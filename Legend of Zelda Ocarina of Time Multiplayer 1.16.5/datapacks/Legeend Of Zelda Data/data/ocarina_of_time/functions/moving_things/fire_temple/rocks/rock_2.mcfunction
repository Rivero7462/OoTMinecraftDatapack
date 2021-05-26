scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 3131 108.75 1967
execute at @s if entity @s[scores={timer=2..25}] run tp @s ~.3 ~ ~
execute at @s if entity @s[scores={timer=26..45}] run tp @s ~ ~ ~-.3
execute at @s if entity @s[scores={timer=46..69}] run tp @s ~-.3 ~ ~

execute at @s if entity @s[scores={timer=89..112}] run tp @s ~.3 ~ ~
execute at @s if entity @s[scores={timer=113..132}] run tp @s ~ ~ ~.3
execute at @s if entity @s[scores={timer=133..156}] run tp @s ~-.3 ~ ~

execute at @s if entity @s[scores={timer=176..}] run scoreboard players set @s timer 0
