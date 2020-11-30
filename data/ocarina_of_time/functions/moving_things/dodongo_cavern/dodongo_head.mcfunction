scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] at @a run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["DodongoHeadCutscene"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={GameTimer=1}] run gamemode spectator @a
execute if entity @s[scores={GameTimer=3..80}] run tp @a 2192 44 1947 180 10

execute if entity @s[scores={GameTimer=12}] run fill 2193 41 1929 2193 41 1929 minecraft:bone_block
execute if entity @s[scores={GameTimer=12}] run fill 2192 38 1919 2192 38 1919 minecraft:stone_pressure_plate
execute if entity @s[scores={GameTimer=12}] run fill 2191 41 1929 2191 41 1929 minecraft:bone_block
execute if entity @s[scores={GameTimer=12}] run fill 2188 41 1927 2188 41 1927 minecraft:bone_block
execute if entity @s[scores={GameTimer=12}] run fill 2196 41 1927 2196 41 1927 minecraft:bone_block

execute if entity @s[scores={GameTimer=10}] run clone 2174 54 2009 2182 57 2000 2188 38 1920
execute if entity @s[scores={GameTimer=20}] run clone 2174 13 2009 2182 16 2000 2188 37 1920
execute if entity @s[scores={GameTimer=30}] run clone 2174 22 2009 2182 26 2000 2188 36 1920
execute if entity @s[scores={GameTimer=40}] run clone 2174 31 2009 2182 36 2000 2188 35 1920
execute if entity @s[scores={GameTimer=50}] run clone 2182 46 2000 2174 40 2009 2188 34 1920
execute if entity @s[scores={GameTimer=52}] run fill 2194 34 1929 2194 34 1929 minecraft:smooth_red_sandstone
execute if entity @s[scores={GameTimer=52}] run fill 2190 34 1929 2190 34 1929 minecraft:smooth_red_sandstone

execute if entity @s[scores={GameTimer=81..}] run tp @a @e[type=area_effect_cloud,tag=DodongoHeadCutscene,limit=1]
execute if entity @s[scores={GameTimer=81..}] run kill @e[type=area_effect_cloud,tag=DodongoHeadCutscene]
execute if entity @s[scores={GameTimer=81..}] run gamemode adventure @a
execute if entity @s[scores={GameTimer=81..}] run fill 2192 33 1931 2192 33 1931 minecraft:gold_block
