scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 471.0 55 869
execute at @s if entity @s[scores={timer=2..38}] run tp @s ~ ~-.3 ~
execute at @s if entity @s[scores={timer=39}] run tp @s ~ ~-.1 ~
execute at @s if entity @s[scores={timer=40..54}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=55}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=56..58}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=59}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=60..65}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=66}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=67..69}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=70}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=71..73}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=74}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=75..78}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=79}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=80..135}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=136}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=137..140}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=141}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=142..148}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=149}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=150..153}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=154}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=155..163}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=164}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=165..168}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=169}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=170..195}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=196..250}] run tp @s ~ ~-.3 ~

execute at @s if entity @s[scores={timer=252}] run tp @s 471 ~ 862
execute at @s if entity @s[scores={timer=256}] run tp @s 471 55 862

execute at @s if entity @s[scores={timer=260..}] run scoreboard players set @s timer 0
