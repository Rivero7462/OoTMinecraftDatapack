scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..401}] run gamemode spectator @a
execute if entity @s[scores={lifetime=1..401}] run kill @e[type=armor_stand,tag=OwlFly]
execute if entity @s[scores={lifetime=1..401}] run tp @a @s

#Steps
execute if entity @s[scores={lifetime=1}] run tag @a add StopTime
execute if entity @s[scores={lifetime=1}] run function ocarina_of_time:music/navi_fly
execute if entity @s[scores={lifetime=1}] run tp @s 2026.505 158.00000 1347.643 -17.6 25.7
execute if entity @s[scores={lifetime=2..36}] run tp @s ~0.0843055555555515 ~-0.0555555555555556 ~0.297833333333333 ~0.7 ~0.641666666666667
execute if entity @s[scores={lifetime=37}] run tp @s 2029.540 156.00000 1358.365 7.6 48.8
execute if entity @s[scores={lifetime=38..60}] run tp @s ~-0.708166666666661 ~-0.416666666666667 ~1.12575 ~-0.0291666666666666 ~-1.2
execute if entity @s[scores={lifetime=61}] run tp @s 2012.544 146.00000 1385.383 6.9 20.0
execute if entity @s[scores={lifetime=62..80}] run tp @s ~-0.177200000000005 ~-0.15 ~0.505449999999996 ~-0.675 ~0.125
execute if entity @s[scores={lifetime=81}] run tp @s 2009 143.00000 1395.492 -6.6 22.5
execute if entity @s[scores={lifetime=82..130}] run tp @s ~0.293119999999999 ~-0.24 ~0.482180000000003 ~-0.666 ~0.148
execute if entity @s[scores={lifetime=131}] run tp @s 2023.656 131.00000 1419.601 -39.9 29.9
execute if entity @s[scores={lifetime=132..170}] run tp @s ~0.300675000000001 ~-0.3 ~0.524799999999999 ~0.3275 ~0.2025
execute if entity @s[scores={lifetime=171}] run tp @s 2035.683 119.00000 1440.593 -26.8 38.0
execute if entity @s[scores={lifetime=172..190}] run tp @s ~0.190999999999997 ~-0.3 ~0.403499999999997 ~1.82 ~-1.83
execute if entity @s[scores={lifetime=191}] run tp @s 2039.503 113.00000 1448.663 9.6 1.4
execute if entity @s[scores={lifetime=192..210}] run tp @s ~-0.118549999999993 ~0.1 ~0.757150000000001
execute if entity @s[scores={lifetime=211}] run tp @s 2037.132 115.00000 1463.806
execute if entity @s[scores={lifetime=212..230}] run tp @s ~-0.330400000000009 ~0.2 ~0.279999999999996 ~5.02 ~-0.9
execute if entity @s[scores={lifetime=231}] run tp @s 2030.524 119.00000 1469.406 100.4 -18.0
execute if entity @s[scores={lifetime=232..270}] run tp @s ~-0.329074999999995 ~0.25 ~-0.226799999999997 ~1.3575 ~0.1325
execute if entity @s[scores={lifetime=271}] run tp @s 2017.361 129.00000 1460.334 154.7 -12.7
execute if entity @s[scores={lifetime=272..290}] run tp @s ~0.221399999999994 ~0 ~-0.692899999999997 ~2.445 ~-0.04
execute if entity @s[scores={lifetime=291}] run tp @s 2021.789 129.00000 1446.476 -156.4 -13.5
execute if entity @s[scores={lifetime=292..330}] run tp @s ~0.193175000000002 ~-0.025 ~-0.080925000000002 ~1.8825 ~0.755
execute if entity @s[scores={lifetime=331}] run tp @s 2029.516 128.00000 1443.239 -81.1 16.7
execute if entity @s[scores={lifetime=332..340}] run tp @s ~ ~-.03 ~ -81.1 16.7
execute if entity @s[scores={lifetime=341..350}] run tp @s ~ ~.03 ~ -81.1 16.7
execute if entity @s[scores={lifetime=351}] run tp @s 2029.516 128.00000 1443.239 -81.1 16.7
execute if entity @s[scores={lifetime=352..380}] run tp @s ~0.296333333333329 ~-0.466666666666667 ~0.538033333333336 ~2.30333333333333 ~0.433333333333333
execute if entity @s[scores={lifetime=381}] run tp @s 2038.406 114.00000 1459.380 -12.0 29.7
execute if entity @s[scores={lifetime=382..400}] run tp @s ~0.103650000000005 ~-0.65 ~0.967449999999997 ~0.06 ~-0.49
execute if entity @s[scores={lifetime=401}] run tp @s 2040.479 101.00000 1478.729 -10.8 19.9

execute at @a if entity @s[scores={lifetime=402}] run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 normal
execute if entity @s[scores={lifetime=402}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={lifetime=402}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={lifetime=402}] run function ocarina_of_time:teleports/death_mountain/loot_reset
execute if entity @s[scores={lifetime=402}] run function ocarina_of_time:teleports/remove_teleports
execute if entity @s[scores={lifetime=402}] run tag @a add InKakarikoVillage
execute if entity @s[scores={lifetime=402}] run gamemode adventure @a
execute if entity @s[scores={lifetime=402}] run tp @a 1545 63 1942
execute if entity @s[scores={lifetime=402}] run tag @a remove Fly
execute if entity @s[scores={lifetime=402}] run kill @s
