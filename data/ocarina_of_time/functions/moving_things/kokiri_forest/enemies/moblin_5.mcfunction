scoreboard players add @s lifetime 1
execute if entity @s[tag=West,scores={timer=217}] run scoreboard players set @s lifetime 330
execute if entity @s[tag=East,scores={timer=217}] run scoreboard players set @s lifetime 692
execute if entity @s[tag=North,scores={timer=217}] run scoreboard players set @s lifetime 1147
execute if entity @s[tag=South,scores={timer=217}] run scoreboard players set @s lifetime 1480

execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1}] run tp @s -564.0 75 -760.0 90 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=2..329}] run tp @s ~-.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=330}] run tp @s -573.6 75 -760.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=331..400}] run tp @s ~-.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=401}] run tp @s -576.0 75 -760.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=410..432}] run tp @s ~ ~ ~ ~6.4 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=433}] run tp @s ~ ~ ~ -90 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=434..691}] run tp @s ~.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=692}] run tp @s -568.4 75 -760.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=693..832}] run tp @s ~.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=833}] run tp @s -564.0 75 -760.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=840..854}] run tp @s ~ ~ ~ ~-6.4 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=855}] run tp @s ~ ~ ~ 180 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=856..1146}] run tp @s ~ ~ ~-.03
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1147}] run tp @s -564.0 75 -768.5
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1148..1221}] run tp @s ~ ~ ~-.03
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1222}] run tp @s -564.0 75 -771.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1231..1258}] run tp @s ~ ~ ~ ~6.4 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1259}] run tp @s ~ ~ ~ 0 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1260..1479}] run tp @s ~ ~ ~.03
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1480}] run tp @s -564.0 75 -764.5
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1481..1624}] run tp @s ~ ~ ~.03
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1625}] run tp @s -564.0 75 -760.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1634..1648}] run tp @s ~ ~ ~ ~6.4 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1649}] run tp @s ~ ~ ~ 90 ~

execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1650..}] run scoreboard players set @s lifetime 0
