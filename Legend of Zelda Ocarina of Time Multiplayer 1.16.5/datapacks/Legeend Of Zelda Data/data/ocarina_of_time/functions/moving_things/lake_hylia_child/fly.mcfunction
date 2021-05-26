execute if entity @s[tag=Fly] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..267}] run gamemode spectator @a
execute if entity @s[scores={lifetime=1..267}] run tag @e[type=armor_stand,tag=OwlStand10] add stoptext
execute if entity @s[scores={lifetime=1..267}] run kill @e[type=armor_stand,tag=OwlFly]
execute if entity @s[scores={lifetime=1..267}] run tp @a @s

#Steps
execute if entity @s[scores={lifetime=1}] run tag @a add StopTime
execute if entity @s[scores={lifetime=1}] run function ocarina_of_time:music/navi_fly
execute if entity @s[scores={lifetime=1}] run tp @s 730.523 73.00000 2760.502 -163.5 -0.9
execute if entity @s[scores={lifetime=2..37}] run tp @s ~0.257222222222222 ~-0.0277777777777778 ~-0.198861111111114 ~-0.783333333333333 ~0.455555555555556
execute if entity @s[scores={lifetime=38..51}] run tp @s ~-0.0999285714285715 ~-0.285714285714286 ~-0.557214285714281 ~-1.38571428571429 ~0.428571428571429
execute if entity @s[scores={lifetime=52..69}] run tp @s ~-0.720722222222226 ~-0.0555555555555556 ~-0.556277777777773 ~-0.805555555555556 ~-0.833333333333333
execute if entity @s[scores={lifetime=70..105}] run tp @s ~-0.196305555555553 ~0.0277777777777778 ~-0.331388888888884 ~1.29166666666667 ~0.111111111111111
execute if entity @s[scores={lifetime=106..141}] run tp @s ~0.0811388888888871 ~0.0277777777777778 ~-0.468611111111121 ~1.60833333333333 ~0.05
execute if entity @s[scores={lifetime=142..161}] run tp @s ~0.214150000000001 ~0.35 ~-0.120699999999988 ~-0.025 ~-0.99
execute if entity @s[scores={lifetime=162..187}] run tp @s ~0.347000000000002 ~0.730769230769231 ~-0.11584615384616 ~-0.265384615384615 ~2.68076923076923
execute if entity @s[scores={lifetime=188..207}] run tp @s ~0.439049999999997 ~-0.8 ~-0.39375 ~-1.035 ~-0.425
execute if entity @s[scores={lifetime=208..217}] run tp @s ~0.404700000000003 ~-0.5 ~-0.913299999999981 ~-2.31 ~-4.44
execute if entity @s[scores={lifetime=218..237}] run tp @s ~0.0591499999999996 ~0.2 ~-0.73565000000001 ~-0.48 ~-0.295
execute if entity @s[scores={lifetime=238..267}] run tp @s ~-0.062966666666667 ~0.433333333333333 ~-0.56846666666667 ~-0.243333333333334 ~-1.34333333333333

execute at @a if entity @s[scores={lifetime=268}] run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 normal
execute if entity @s[scores={lifetime=268}] run clone 699 66 2774 696 66 2774 729 71 2761
execute if entity @s[scores={lifetime=268}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute if entity @s[scores={lifetime=268}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[scores={lifetime=268}] if entity @a[scores={time=13001..23000}] run stopsound @a music
execute if entity @s[scores={lifetime=268}] run function ocarina_of_time:teleports/lake_hylia_child/enemies
execute if entity @s[scores={lifetime=268}] run function ocarina_of_time:teleports/lake_hylia_child/loot_reset
execute if entity @s[scores={lifetime=268}] run tag @a add InHyruleField
execute if entity @s[scores={lifetime=268}] run tp @e[type=armor_stand,tag=OwlStand10] 730.3 73 2761
execute if entity @s[scores={lifetime=268}] run gamemode adventure @a
execute if entity @s[scores={lifetime=268}] run tp @a 974.0 67 1927 180 ~
execute if entity @s[scores={lifetime=268}] run tag @a remove Fly
execute if entity @s[scores={lifetime=268}] run kill @s
