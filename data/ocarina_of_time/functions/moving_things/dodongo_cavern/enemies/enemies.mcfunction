#Keese
#1
execute as @e[type=bat,tag=Keese1] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -135 ~
execute unless entity @e[type=bat,tag=Keese1,x=2270,y=38,z=1942] run fill 2270 39 1942 2270 39 1942 minecraft:air
#2
execute as @e[type=bat,tag=Keese2] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 135 ~
execute unless entity @e[type=bat,tag=Keese2,x=2268,y=38,z=1940] run fill 2268 39 1940 2268 39 1940 minecraft:air
#5
execute as @e[type=bat,tag=Keese5] at @s if entity @s[y=45,dy=0] run tp @s ~ ~1 ~
execute as @e[type=bat,tag=Keese5] at @s if entity @s[x=2211,y=50,z=1954,dx=0,dy=2,dz=2] run tp @s ~-1 ~ ~
execute as @e[type=bat,tag=Keese5] at @s if entity @s[x=2211,y=50,z=1940,dx=0,dy=2,dz=2] run tp @s ~-1 ~ ~
#6
execute as @e[type=bat,tag=Keese6] at @s if entity @s[y=45,dy=0] run tp @s ~ ~1 ~
execute as @e[type=bat,tag=Keese6] at @s if entity @s[x=2211,y=50,z=1954,dx=0,dy=2,dz=2] run tp @s ~-1 ~ ~
execute as @e[type=bat,tag=Keese6] at @s if entity @s[x=2211,y=50,z=1940,dx=0,dy=2,dz=2] run tp @s ~-1 ~ ~
#7
execute as @e[type=bat,tag=Keese7] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 0 ~
execute unless entity @e[type=bat,tag=Keese7,x=2249,y=36,z=1978] run fill 2249 37 1978 2249 37 1978 minecraft:air
#8
execute as @e[type=bat,tag=Keese8] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 0 ~
execute unless entity @e[type=bat,tag=Keese8,x=2247,y=36,z=1978] run fill 2247 37 1978 2247 37 1978 minecraft:air
#9
execute as @e[type=bat,tag=Keese9] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 0 ~
execute unless entity @e[type=bat,tag=Keese9,x=2246,y=36,z=1978] run fill 2246 37 1978 2246 37 1978 minecraft:air

#Blade Trap
#1
execute as @e[type=armor_stand,tag=BladeTrap1] at @s if entity @a[x=2224,y=46,z=1954,dx=2,dz=5] run tag @s add North
execute as @e[type=armor_stand,tag=BladeTrap1,scores={timer=0}] run tp @s 2225 45 1959
#2
execute as @e[type=armor_stand,tag=BladeTrap2] at @s if entity @a[x=2228,y=46,z=1955,dx=2,dz=4] run tag @s add North2
execute as @e[type=armor_stand,tag=BladeTrap2,scores={timer=0}] run tp @s 2229 45 1959
#3
execute as @e[type=armor_stand,tag=BladeTrap3] at @s if entity @a[x=2228,y=46,z=1950,dx=2,dz=2] run tag @s add South
execute as @e[type=armor_stand,tag=BladeTrap3] at @s if entity @a[x=2225,y=46,z=1948,dx=3,dz=1] run tag @s add West
execute as @e[type=armor_stand,tag=BladeTrap3,scores={timer=0}] run tp @s 2229 45 1948

#Lizalfos
#1
execute if entity @a[x=2269,y=38,z=1930,dx=0,dz=0] unless block 2269 34 1929 minecraft:gold_block run function ocarina_of_time:moving_things/dodongo_cavern/enemies/lizalfos_room_1/lizalfos1
execute if entity @a[x=2269,y=38,z=1930,dx=0,dz=0] unless block 2269 34 1929 minecraft:gold_block run fill 2269 34 1929 2269 34 1929 minecraft:gold_block
execute unless entity @e[type=zombie,tag=Lizalfos] if block 2269 34 1929 minecraft:gold_block unless block 2254 37 1903 minecraft:stone_pressure_plate run function ocarina_of_time:moving_things/dodongo_cavern/enemies/lizalfos_room_1/lizalfos2
#2
execute if entity @a[x=2286,y=51,z=1946,dx=0,dz=0] unless block 2285 46 1945 minecraft:gold_block run function ocarina_of_time:moving_things/dodongo_cavern/enemies/lizalfos_room_2/lizalfos1
execute if entity @a[x=2286,y=51,z=1946,dx=0,dz=0] unless block 2285 46 1945 minecraft:gold_block run fill 2285 46 1945 2285 46 1945 minecraft:gold_block
execute unless entity @e[type=zombie,tag=Lizalfos] if block 2285 46 1945 minecraft:gold_block unless block 2276 50 1941 minecraft:stone_pressure_plate run function ocarina_of_time:moving_things/dodongo_cavern/enemies/lizalfos_room_2/lizalfos2

#Dodongo's
execute unless entity @a[x=2253,y=37,z=1902,dx=0,dz=5] if entity @a[x=2254,y=37,z=1903,dx=0,dz=5] run kill @e[type=zombie,tag=Dodongo]
execute if entity @a[x=2253,y=37,z=1902,dx=0,dz=5] run function ocarina_of_time:moving_things/dodongo_cavern/enemies/dodongo
execute unless entity @a[x=2212,y=37,z=1940,dx=0,dz=2] if entity @a[x=2211,y=37,z=1940,dx=0,dz=2] run kill @e[type=zombie,tag=Dodongo]
execute if entity @a[x=2212,y=37,z=1940,dx=0,dz=2] run function ocarina_of_time:moving_things/dodongo_cavern/enemies/dodongo
