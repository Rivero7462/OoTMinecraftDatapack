scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run tp @s ~-.25 ~ ~ 90 ~
execute if entity @s[scores={lifetime=2..16}] run tp @s ~-.25 ~ ~
execute if entity @s[scores={lifetime=17}] run tp @s ~ ~ ~.25 0 ~
execute if entity @s[scores={lifetime=18..44}] run tp @s ~ ~ ~.25
execute if entity @s[scores={lifetime=45}] run tp @s ~.25 ~ ~ -90 ~
execute if entity @s[scores={lifetime=46..83}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=84}] run tp @s ~.25 ~.5 ~
execute if entity @s[scores={lifetime=85..86}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=87}] run tp @s ~.25 ~.5 ~
execute if entity @s[scores={lifetime=88..90}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=91}] run tp @s ~.25 ~.5 ~
execute if entity @s[scores={lifetime=92..94}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=95}] run tp @s ~.25 ~.5 ~
execute if entity @s[scores={lifetime=96..98}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=99}] run tp @s ~.25 ~.5 ~
execute if entity @s[scores={lifetime=100..102}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=103}] run tp @s ~.25 ~.5 ~
execute if entity @s[scores={lifetime=104..106}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=107}] run tp @s ~.25 ~.5 ~
execute if entity @s[scores={lifetime=108..110}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=111}] run tp @s ~.25 ~.5 ~
execute if entity @s[scores={lifetime=112..114}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=115}] run tp @s ~.25 ~.5 ~
execute if entity @s[scores={lifetime=116..118}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=119}] run tp @s ~.25 ~.5 ~
execute if entity @s[scores={lifetime=120..122}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=123}] run tp @s ~.25 ~.5 ~
execute if entity @s[scores={lifetime=124..126}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=127}] run tp @s ~.25 ~.5 ~
execute if entity @s[scores={lifetime=128..132}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=133}] run tp @s ~ ~ ~.25 0 ~
execute if entity @s[scores={lifetime=134..179}] run tp @s ~ ~ ~.25

execute if entity @s[scores={lifetime=180..}] run tp @s -85 33 1977 0 ~
execute if entity @s[scores={lifetime=180..}] run tag @s remove Run
#execute if entity @s[scores={lifetime=180..}] run tag @s remove Rescue
execute if entity @s[scores={lifetime=180..}] run scoreboard players set @s lifetime 0
