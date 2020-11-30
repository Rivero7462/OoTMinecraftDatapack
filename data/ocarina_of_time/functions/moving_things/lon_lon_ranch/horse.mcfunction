#Always The Same
scoreboard players add @s lifetime 1
execute unless entity @s[team=Horses] run team join Horses @s

#LifeTime
execute if entity @s[scores={lifetime=1481..}] run tp @e[type=horse,tag=RunningHorse] ~ 10 ~
execute if entity @s[scores={lifetime=1481..}] run kill @e[type=horse,tag=RunningHorse]
execute if entity @s[scores={lifetime=1481..}] run summon minecraft:horse 458 30 1325 {NoAI:1b,Tags:["RunningHorse","NoRideHorse"],Rotation:[270f],Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Silent:1,Invulnerable:1}

#Moving
execute if entity @s[scores={lifetime=1..205}] run tp @s ~.2 ~ ~ 270 ~
execute if entity @s[scores={lifetime=206..255}] run tp @s ~.13 ~ ~.07 -60 ~
execute if entity @s[scores={lifetime=256..330}] run tp @s ~.1 ~ ~.1 -45 ~
execute if entity @s[scores={lifetime=331..363}] run tp @s ~ ~ ~.2 0 ~
execute if entity @s[scores={lifetime=364..375}] run tp @s ~.1 ~ ~.1 -45 ~
execute if entity @s[scores={lifetime=376..440}] run tp @s ~ ~ ~.2 0 ~
execute if entity @s[scores={lifetime=441..453}] run tp @s ~-.1 ~ ~.1 45 ~
execute if entity @s[scores={lifetime=454..483}] run tp @s ~ ~ ~.2 0 ~
execute if entity @s[scores={lifetime=484..555}] run tp @s ~-.1 ~ ~.1 45 ~
execute if entity @s[scores={lifetime=556..608}] run tp @s ~-.13 ~ ~.07 65 ~
execute if entity @s[scores={lifetime=609..950}] run tp @s ~-.2 ~ ~ 90 ~
execute if entity @s[scores={lifetime=951..997}] run tp @s ~-.13 ~ ~-.07 125 ~
execute if entity @s[scores={lifetime=998..1075}] run tp @s ~-.1 ~ ~-.1 135 ~
execute if entity @s[scores={lifetime=1076..1210}] run tp @s ~ ~ ~-.2 180 ~
execute if entity @s[scores={lifetime=1211..1300}] run tp @s ~.1 ~ ~-.1 -135 ~
execute if entity @s[scores={lifetime=1301..1341}] run tp @s ~.13 ~ ~-.07 -115 ~
execute if entity @s[scores={lifetime=1342..1480}] run tp @s ~.2 ~ ~ 270 ~
