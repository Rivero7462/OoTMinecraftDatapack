scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 451.0 55 869
execute at @s if entity @s[scores={timer=2..38}] run tp @s ~ ~-.3 ~
execute at @s if entity @s[scores={timer=39}] run tp @s ~ ~-.1 ~
execute at @s if entity @s[scores={timer=40..74}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=75}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=76..77}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=78}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=79}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=80}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=81..83}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=84}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=85..89}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=90}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=91..94}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=95}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=96..109}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=110}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=111..114}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=115}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=116..124}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=125}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=126..129}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=130}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=131..139}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=140}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=141..144}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=145}] run tp @s ~ ~-.5 ~.2
execute at @s if entity @s[scores={timer=146..195}] run tp @s ~ ~ ~.2
execute at @s if entity @s[scores={timer=196..250}] run tp @s ~ ~-.3 ~

execute at @s if entity @s[scores={timer=252}] run tp @s 451 ~ 862
execute at @s if entity @s[scores={timer=256}] run tp @s 451 55 862

execute at @s if entity @s[scores={timer=260..}] run scoreboard players set @s timer 0
