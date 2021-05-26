#Spike Room
execute unless block 1016 57 3023 minecraft:gold_block if entity @a[x=1029,y=57,z=3025,dx=0,dz=0] run function ocarina_of_time:moving_things/water_temple/enemies/spike_room
#Clear
execute unless block 1016 57 3027 minecraft:gold_block if block 1016 57 3023 minecraft:gold_block unless entity @e[type=zombie,tag=Spike1] unless entity @e[type=zombie,tag=Spike2] unless entity @e[type=zombie,tag=Spike3] unless entity @e[type=zombie,tag=Spike4] run function ocarina_of_time:moving_things/water_temple/enemies/clear_spike_room

#Shell Blade Room
execute unless block 1016 36 3023 minecraft:gold_block if entity @a[x=1029,y=36,z=3025,dx=0,dz=0] run function ocarina_of_time:moving_things/water_temple/enemies/shell_blade_room
#Clear
execute unless block 1016 36 3027 minecraft:gold_block if block 1016 36 3023 minecraft:gold_block unless entity @e[type=zombie,tag=ShellBlade1] unless entity @e[type=zombie,tag=ShellBlade2] unless entity @e[type=zombie,tag=ShellBlade3] run function ocarina_of_time:moving_things/water_temple/enemies/clear_shell_blade_room

#Shell Spike Room
#Clear
execute unless block 1050 28 3023 minecraft:gold_block if block 1050 28 3025 minecraft:gold_block unless entity @e[type=zombie,tag=ShellSpikeRoom] run function ocarina_of_time:moving_things/water_temple/enemies/clear_shell_spike_room

#Keese
#1
execute as @e[type=bat,tag=Keese23] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -45 ~
#2
execute as @e[type=bat,tag=Keese24] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -135 ~

#Dark Link
execute unless block 1135 58 3095 minecraft:gold_block if block 1134 65 3069 minecraft:stone_pressure_plate[powered=true] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/start
execute if entity @a[tag=Miniboss] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/loop

#Spike Traps
execute as @e[type=armor_stand,tag=BladeTrap,tag=Type2] at @s run function ocarina_of_time:moving_things/water_temple/enemies/spike_trap
