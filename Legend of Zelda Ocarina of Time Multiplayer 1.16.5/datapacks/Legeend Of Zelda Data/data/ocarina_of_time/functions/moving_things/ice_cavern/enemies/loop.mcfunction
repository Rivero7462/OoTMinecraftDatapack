#Blade Traps
execute as @e[type=armor_stand,tag=BladeTrap] at @s run function ocarina_of_time:moving_things/ice_cavern/enemies/blade_trap

#Freezard Room
execute unless block 2049 22 2328 minecraft:gold_block if entity @a[x=2050,y=27,z=2341,dx=0,dz=0] run function ocarina_of_time:moving_things/ice_cavern/enemies/freezard_room/summon
execute unless block 2050 22 2328 minecraft:gold_block if block 2049 22 2328 minecraft:gold_block unless entity @e[type=zombie,tag=FreezardRoom1] run function ocarina_of_time:moving_things/ice_cavern/enemies/freezard_room/finish

#Keese
#1
execute as @e[type=bat,tag=Keese61] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -90 ~
execute unless entity @e[type=bat,tag=Keese61,x=2084,y=25,z=2310] run fill 2084 26 2310 2084 26 2310 minecraft:air
#2
execute as @e[type=bat,tag=Keese62] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 0 ~
execute unless entity @e[type=bat,tag=Keese62,x=2079,y=28,z=2318] run fill 2079 29 2318 2079 29 2318 minecraft:air
#3
execute as @e[type=bat,tag=Keese63] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 0 ~
execute unless entity @e[type=bat,tag=Keese63,x=2076,y=27,z=2318] run fill 2076 28 2318 2076 28 2318 minecraft:air

#Wolfos
execute if entity @a[x=2021,y=33,z=2321,dx=0,dz=0] run fill 2026 30 2324 2026 30 2324 minecraft:gold_block
execute if block 2026 30 2324 minecraft:gold_block unless block 2026 30 2325 minecraft:gold_block unless entity @e[type=zombie,tag=Wolfos] run function ocarina_of_time:moving_things/ice_cavern/enemies/wolfos
