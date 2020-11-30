scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run tp @s ~-.25 ~ ~ 90 ~
execute if entity @s[scores={lifetime=2..16}] run tp @s ~-.25 ~ ~
execute if entity @s[scores={lifetime=17}] run tp @s ~ ~ ~.25 0 ~
execute if entity @s[scores={lifetime=18..28}] run tp @s ~ ~ ~.25

execute if entity @s[scores={lifetime=29}] run tp @s ^ ^ ^.25 -25 ~
execute if entity @s[scores={lifetime=30..95}] run tp @s ^ ^ ^.25
execute if entity @s[scores={lifetime=96}] run tp @s ~ ~ ~.25 0 ~
execute if entity @s[scores={lifetime=97..122}] run tp @s ~ ~ ~.25
execute if entity @s[scores={lifetime=123}] run tp @s ~.25 ~ ~ -90 ~
execute if entity @s[scores={lifetime=124..166}] run tp @s ~.25 ~ ~
execute if entity @s[scores={lifetime=167}] run tp @s ~ ~ ~.25 0 ~
execute if entity @s[scores={lifetime=168..206}] run tp @s ~ ~ ~.25
execute if entity @s[scores={lifetime=207}] run tp @s ~.25 ~ ~ -90 ~
execute if entity @s[scores={lifetime=208..300}] run tp @s ~.25 ~ ~

execute if entity @s[scores={lifetime=300..}] run tp @s -135 39 1926 0 ~
execute if entity @s[scores={lifetime=300..}] run tag @s remove Run
execute if entity @s[scores={lifetime=300..}] run tag @s remove Rescue
execute if entity @s[scores={lifetime=300..}] run scoreboard players set @s lifetime 0
