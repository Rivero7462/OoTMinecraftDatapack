#Switch
execute if block 3019 109 1932 minecraft:light_weighted_pressure_plate[power=1] run tag @s add On
execute unless entity @s[tag=On] run scoreboard players set @s timer 0
execute if entity @s[tag=On] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run fill 3019 108 1932 3019 108 1932 minecraft:gold_block
execute if entity @s[scores={timer=1}] run fill 3019 109 1932 3019 109 1932 minecraft:air
execute if entity @s[scores={timer=151..}] run fill 3019 108 1932 3019 108 1932 minecraft:brown_concrete_powder
execute if entity @s[scores={timer=151..}] run fill 3019 109 1932 3019 109 1932 minecraft:light_weighted_pressure_plate
execute if entity @s[scores={timer=151..}] run tag @s remove On
#Fire/Barriers
execute if entity @s[scores={timer=1}] run fill 3011 110 1940 3011 111 1940 minecraft:air
execute if entity @s[scores={timer=1}] run fill 3012 110 1941 3012 111 1941 minecraft:air
execute if entity @s[scores={timer=1}] run fill 3013 110 1942 3013 111 1942 minecraft:air
execute if entity @s[scores={timer=1}] run fill 3014 110 1943 3014 111 1943 minecraft:air
execute if entity @s[scores={timer=1}] run fill 3015 110 1944 3015 111 1944 minecraft:air
execute if entity @s[scores={timer=1}] run fill 3016 110 1945 3016 111 1945 minecraft:air
execute if entity @s[scores={timer=1}] run fill 3017 110 1946 3017 111 1946 minecraft:air
execute if entity @s[scores={timer=1}] run fill 3018 110 1947 3018 111 1947 minecraft:air
execute if entity @s[scores={timer=1}] run fill 3019 110 1948 3019 111 1948 minecraft:air
execute if entity @s[scores={timer=1}] run fill 3020 110 1949 3020 111 1949 minecraft:air
execute if entity @s[scores={timer=1}] run fill 3021 110 1950 3021 111 1950 minecraft:air
execute if entity @s[scores={timer=1}] run fill 3022 110 1951 3022 111 1951 minecraft:air
#Fire
execute unless entity @s[tag=On] run fill 3011 110 1940 3011 110 1940 minecraft:fire
execute unless entity @s[tag=On] run fill 3012 110 1941 3012 110 1941 minecraft:fire
execute unless entity @s[tag=On] run fill 3013 110 1942 3013 110 1942 minecraft:fire
execute unless entity @s[tag=On] run fill 3014 110 1943 3014 110 1943 minecraft:fire
execute unless entity @s[tag=On] run fill 3015 110 1944 3015 110 1944 minecraft:fire
execute unless entity @s[tag=On] run fill 3016 110 1945 3016 110 1945 minecraft:fire
execute unless entity @s[tag=On] run fill 3017 110 1946 3017 110 1946 minecraft:fire
execute unless entity @s[tag=On] run fill 3018 110 1947 3018 110 1947 minecraft:fire
execute unless entity @s[tag=On] run fill 3019 110 1948 3019 110 1948 minecraft:fire
execute unless entity @s[tag=On] run fill 3020 110 1949 3020 110 1949 minecraft:fire
execute unless entity @s[tag=On] run fill 3021 110 1950 3021 110 1950 minecraft:fire
execute unless entity @s[tag=On] run fill 3022 110 1951 3022 110 1951 minecraft:fire
#Barrier
execute if entity @s[scores={timer=150}] run fill 3011 111 1940 3011 111 1940 minecraft:barrier
execute if entity @s[scores={timer=150}] run fill 3012 111 1941 3012 111 1941 minecraft:barrier
execute if entity @s[scores={timer=150}] run fill 3013 111 1942 3013 111 1942 minecraft:barrier
execute if entity @s[scores={timer=150}] run fill 3014 111 1943 3014 111 1943 minecraft:barrier
execute if entity @s[scores={timer=150}] run fill 3015 111 1944 3015 111 1944 minecraft:barrier
execute if entity @s[scores={timer=150}] run fill 3016 111 1945 3016 111 1945 minecraft:barrier
execute if entity @s[scores={timer=150}] run fill 3017 111 1946 3017 111 1946 minecraft:barrier
execute if entity @s[scores={timer=150}] run fill 3018 111 1947 3018 111 1947 minecraft:barrier
execute if entity @s[scores={timer=150}] run fill 3019 111 1948 3019 111 1948 minecraft:barrier
execute if entity @s[scores={timer=150}] run fill 3020 111 1949 3020 111 1949 minecraft:barrier
execute if entity @s[scores={timer=150}] run fill 3021 111 1950 3021 111 1950 minecraft:barrier
execute if entity @s[scores={timer=150}] run fill 3022 111 1951 3022 111 1951 minecraft:barrier

#Switch 2
execute if block 3025 153 1947 minecraft:light_weighted_pressure_plate[power=1] run tag @s add On2
execute unless entity @s[tag=On2] run scoreboard players set @s lifetime 0
execute if entity @s[tag=On2] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run fill 3025 152 1947 3025 152 1947 minecraft:gold_block
execute if entity @s[scores={lifetime=1}] run fill 3025 153 1947 3025 153 1947 minecraft:air
execute if entity @s[scores={lifetime=151..}] run fill 3025 152 1947 3025 152 1947 minecraft:orange_terracotta
execute if entity @s[scores={lifetime=151..}] run fill 3025 153 1947 3025 153 1947 minecraft:light_weighted_pressure_plate
execute if entity @s[scores={lifetime=151..}] run tag @s remove On2
#Fire/Barriers
execute if entity @s[scores={lifetime=1}] run fill 3022 159 1964 3020 158 1966 minecraft:air replace minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill 3022 159 1964 3020 158 1966 minecraft:air replace minecraft:fire
#Fire
execute unless entity @s[tag=On2] run fill 3022 158 1965 3020 158 1965 minecraft:fire replace minecraft:air
execute unless entity @s[tag=On2] run fill 3021 158 1964 3021 158 1966 minecraft:fire replace minecraft:air

#Barrier
execute if entity @s[scores={lifetime=150}] run fill 3020 159 1965 3022 159 1965 minecraft:barrier
execute if entity @s[scores={lifetime=150}] run fill 3021 159 1966 3021 159 1964 minecraft:barrier

execute if block 3021 158 1965 chest{Items:[]} run fill 3021 155 1965 3021 155 1965 minecraft:gold_block
execute if block 3021 155 1965 minecraft:gold_block run fill 3025 152 1947 3025 152 1947 minecraft:gold_block
execute if block 3021 155 1965 minecraft:gold_block run fill 3025 153 1947 3025 153 1947 minecraft:air

#Switch 3
execute if block 3105 153 1947 minecraft:light_weighted_pressure_plate[power=1] run tag @s add On3
execute unless entity @s[tag=On3] run scoreboard players set @s GameTimer 0
execute if entity @s[tag=On3] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run fill 3105 152 1947 3105 152 1947 minecraft:gold_block
execute if entity @s[scores={GameTimer=1}] run fill 3105 153 1947 3105 153 1947 minecraft:air
execute if entity @s[scores={GameTimer=191..}] run fill 3105 152 1947 3105 152 1947 minecraft:brown_concrete_powder
execute if entity @s[scores={GameTimer=191..}] run fill 3105 153 1947 3105 153 1947 minecraft:light_weighted_pressure_plate
execute if entity @s[scores={GameTimer=191..}] run tag @s remove On3
#Fire/Barriers
execute if entity @s[scores={GameTimer=1}] run fill 3122 160 1947 3124 161 1949 minecraft:air replace minecraft:barrier
execute if entity @s[scores={GameTimer=1}] run fill 3122 160 1947 3124 161 1949 minecraft:air replace minecraft:fire
#Fire
execute unless entity @s[tag=On3] run fill 3122 160 1948 3124 160 1948 minecraft:fire replace minecraft:air
execute unless entity @s[tag=On3] run fill 3123 160 1949 3123 160 1947 minecraft:fire replace minecraft:air

#Barrier
execute if entity @s[scores={GameTimer=190}] run fill 3122 161 1948 3124 161 1948 minecraft:barrier
execute if entity @s[scores={GameTimer=190}] run fill 3123 161 1947 3123 161 1949 minecraft:barrier

execute if block 3123 160 1948 chest{Items:[]} run fill 3123 157 1948 3123 157 1948 minecraft:gold_block
execute if block 3123 157 1948 minecraft:gold_block run fill 3105 152 1947 3105 152 1947 minecraft:gold_block
execute if block 3123 157 1948 minecraft:gold_block run fill 3105 153 1947 3105 153 1947 minecraft:air
