#Spinning Fire
execute as @e[type=zombie,tag=SpinFire] at @s run function ocarina_of_time:moving_things/fire_temple/enemies/spinning_fire
execute as @e[type=zombie,tag=SpinFire2] at @s run function ocarina_of_time:moving_things/fire_temple/enemies/shooting_fire

#Red Bubble
execute as @e[type=zombie,tag=RedBubble] at @s run function ocarina_of_time:moving_things/fire_temple/enemies/red_bubble

#Flying Tiles
execute as @e[type=armor_stand,tag=FlyingTile] at @s unless entity @e[type=zombie,tag=FlyingTile,distance=..1] run kill @s
#1
execute as @e[type=zombie,tag=FlyingTile8] run function ocarina_of_time:moving_things/fire_temple/enemies/tile_room_1
#2
execute as @e[type=zombie,tag=FlyingTile13] run function ocarina_of_time:moving_things/fire_temple/enemies/tile_room_2

#Keese
execute as @e[type=bat,tag=Keese] at @s if entity @s[y=149,dy=0] run tp @s ~ ~1 ~
#7
execute as @e[type=bat,tag=Keese7] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -135 ~
execute unless entity @e[type=bat,tag=Keese7,x=3156,y=60,z=1964] run fill 3156 61 1964 3156 61 1964 minecraft:air
#8
execute as @e[type=bat,tag=Keese8] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -135 ~
execute unless entity @e[type=bat,tag=Keese8,x=3154,y=60,z=1964] run fill 3154 61 1964 3154 61 1964 minecraft:air
#9
execute as @e[type=bat,tag=Keese9] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -135 ~
execute unless entity @e[type=bat,tag=Keese9,x=3156,y=60,z=1949] run fill 3156 61 1949 3156 61 1949 minecraft:air
#10
execute as @e[type=bat,tag=Keese10] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -135 ~
execute unless entity @e[type=bat,tag=Keese10,x=3154,y=60,z=1949] run fill 3154 61 1949 3154 61 1949 minecraft:air

#Moving Fire Wall
execute as @e[type=armor_stand,tag=MovingFireWall] at @s run function ocarina_of_time:moving_things/fire_temple/enemies/fire_wall

#Enemy Room
execute unless block 3076 39 1935 minecraft:gold_block if entity @a[x=3081,y=42,z=1958,dx=0,dz=0] run function ocarina_of_time:moving_things/fire_temple/enemies/enemy_room
execute if block 3076 39 1935 minecraft:gold_block unless entity @e[type=bat,tag=Keese20] unless entity @e[type=bat,tag=Keese21] unless entity @e[type=bat,tag=Keese22] unless entity @e[type=zombie,tag=TorchSlug6] unless entity @e[type=zombie,tag=TorchSlug7] unless entity @e[type=zombie,tag=TorchSlug8] unless entity @e[type=zombie,tag=TorchSlug9] run fill 3077 39 1935 3077 39 1935 minecraft:gold_block
execute if block 3077 39 1935 minecraft:gold_block unless block 3080 42 1928 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if block 3077 39 1935 minecraft:gold_block run fill 3080 42 1928 3080 42 1928 minecraft:stone_pressure_plate replace minecraft:air

#Flare Dancer
#1
execute if entity @a[x=3009,y=110,z=1952,dx=0,dz=0] unless block 3001 102 1957 minecraft:gold_block run function ocarina_of_time:moving_things/fire_temple/enemies/flare_dancer_1
execute if entity @a[x=3010,y=110,z=1953,dx=0,dz=0] unless block 3001 102 1957 minecraft:gold_block run function ocarina_of_time:moving_things/fire_temple/enemies/flare_dancer_1
execute if block 3001 102 1957 minecraft:gold_block unless entity @e[type=zombie,tag=FlareDancer1] unless block 3001 102 1956 minecraft:gold_block at @a run function ocarina_of_time:moving_things/fire_temple/enemies/flare_dancer_2
execute unless block 3001 102 1956 minecraft:gold_block run fill 3003 112 1958 2999 112 1962 minecraft:fire
execute if block 3001 102 1956 minecraft:gold_block run fill 3003 112 1958 2999 112 1962 minecraft:air replace minecraft:fire
#2
execute if entity @a[x=3073,y=42,z=1917,dx=0,dz=0] unless block 3064 34 1912 minecraft:gold_block run function ocarina_of_time:moving_things/fire_temple/enemies/flare_dancer_3
execute if block 3064 34 1912 minecraft:gold_block unless entity @e[type=zombie,tag=FlareDancer2] unless block 3064 34 1911 minecraft:gold_block at @a run function ocarina_of_time:moving_things/fire_temple/enemies/flare_dancer_4
execute unless block 3064 34 1911 minecraft:gold_block run fill 3062 44 1917 3066 44 1913 minecraft:fire
execute if block 3064 34 1911 minecraft:gold_block run fill 3062 44 1917 3066 44 1913 minecraft:air replace minecraft:fire
