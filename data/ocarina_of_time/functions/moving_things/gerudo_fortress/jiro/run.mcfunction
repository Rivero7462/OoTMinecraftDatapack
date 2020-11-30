scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run tp @s ~ ~ ~.25 0 ~
execute if entity @s[scores={lifetime=2..16}] run tp @s ~ ~ ~.25
execute if entity @s[scores={lifetime=17}] run tp @s ~-.25 ~ ~ 90 ~
execute if entity @s[scores={lifetime=18..44}] run tp @s ~-.25 ~ ~
execute if entity @s[scores={lifetime=45}] run tp @s ~ ~ ~-.25 180 ~
execute if entity @s[scores={lifetime=46..86}] run tp @s ~ ~ ~-.25
execute if entity @s[scores={lifetime=87}] run tp @s ~ ~.5 ~-.25
execute if entity @s[scores={lifetime=88..91}] run tp @s ~ ~ ~-.25
execute if entity @s[scores={lifetime=92}] run tp @s ~ ~.5 ~-.25
execute if entity @s[scores={lifetime=93..98}] run tp @s ~ ~ ~-.25
execute if entity @s[scores={lifetime=99}] run tp @s ~ ~.5 ~-.25
execute if entity @s[scores={lifetime=100..106}] run tp @s ~ ~ ~-.25
execute if entity @s[scores={lifetime=107}] run tp @s ~ ~.5 ~-.25
execute if entity @s[scores={lifetime=108..114}] run tp @s ~ ~ ~-.25
execute if entity @s[scores={lifetime=115}] run tp @s ~ ~.5 ~-.25
execute if entity @s[scores={lifetime=116..118}] run tp @s ~ ~ ~-.25
execute if entity @s[scores={lifetime=119}] run tp @s ~ ~.5 ~-.25
execute if entity @s[scores={lifetime=120..124}] run tp @s ~ ~ ~-.25
execute if entity @s[scores={lifetime=125}] run tp @s ~-.25 ~ ~ 90 ~
execute if entity @s[scores={lifetime=126..169}] run tp @s ~-.25 ~ ~

execute if entity @s[scores={lifetime=170..}] run tp @s -39 38 1964 90 ~
execute if entity @s[scores={lifetime=170..}] run tag @s remove Run
execute if entity @s[scores={lifetime=170..}] run tag @s remove Rescue
execute if entity @s[scores={lifetime=170..}] run scoreboard players set @s lifetime 0
