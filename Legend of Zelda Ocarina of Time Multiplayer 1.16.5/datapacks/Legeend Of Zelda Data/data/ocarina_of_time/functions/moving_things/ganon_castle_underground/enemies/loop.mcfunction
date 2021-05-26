#Business Scrubs and Fairies
execute if entity @a[x=-492,y=21,z=2003,dx=2,dz=0] unless entity @e[type=armor_stand,tag=BusinessScrub] unless entity @e[type=item,nbt={Item:{tag:{Fairy:1b}}}] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/scrub_fairy/summon
execute if entity @a[x=-492,y=21,z=2001,dx=2,dz=0] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/scrub_fairy/reset

#Freezard Room
execute unless block -445 17 1972 minecraft:gold_block if entity @a[x=-457,y=21,z=1974,dx=0,dz=6] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/freezard_room/summon
execute unless block -445 17 1973 minecraft:gold_block if block -445 17 1972 minecraft:gold_block unless entity @e[type=zombie,tag=FreezardRoom2] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/freezard_room/finish
execute if entity @a[x=-459,y=20,z=1974,dx=0,dz=0] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/freezard_room/reset

#Time Rooms
#Ice Block
execute if entity @a[x=-430,y=20,z=1974,dx=0,dz=0] unless block -420 15 1973 minecraft:gold_block run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/time_room_1/summon
execute if entity @a[x=-405,y=20,z=1974,dx=0,dz=0] unless block -420 15 1973 minecraft:gold_block run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/time_room_1/summon
execute if entity @a[tag=TimerRoom1] run scoreboard objectives setdisplay sidebar MiniGameTime
execute if entity @a[tag=TimerRoom1] run tag @a add HideDisplayScore
execute if entity @a[tag=TimerRoom1,scores={MiniGameTime=0}] run scoreboard players set @a MiniGameTime 1500
execute if entity @a[tag=TimerRoom1,scores={MiniGameTime=2..1500}] run scoreboard players remove @a MiniGameTime 1
execute if entity @a[tag=TimerRoom1,scores={MiniGameTime=1}] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/time_room_1/reset_1
execute if entity @a[tag=TimerRoom1,x=-403,y=20,z=1974,dx=0,dz=0] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/time_room_1/reset_2
execute if entity @a[tag=TimerRoom1,x=-432,y=20,z=1974,dx=0,dz=0] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/time_room_1/reset_2
#Rocks
execute if entity @a[x=-557,y=20,z=1974,dx=0,dz=0] unless block -569 16 1974 minecraft:gold_block run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/time_room_2/summon
execute if entity @a[x=-580,y=20,z=1974,dx=0,dz=0] unless block -569 16 1974 minecraft:gold_block run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/time_room_2/summon
execute if entity @a[tag=TimerRoom2] run scoreboard objectives setdisplay sidebar MiniGameTime
execute if entity @a[tag=TimerRoom2] run tag @a add HideDisplayScore
execute if entity @a[tag=TimerRoom2,scores={MiniGameTime=0}] run scoreboard players set @a MiniGameTime 1000
execute if entity @a[tag=TimerRoom2,scores={MiniGameTime=2..1000}] run scoreboard players remove @a MiniGameTime 1
execute if entity @a[tag=TimerRoom2,scores={MiniGameTime=1}] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/time_room_2/reset_1
execute if entity @a[tag=TimerRoom2,x=-555,y=20,z=1974,dx=0,dz=0] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/time_room_2/reset_2
execute if entity @a[tag=TimerRoom2,x=-582,y=20,z=1974,dx=0,dz=0] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/time_room_2/reset_2

#Red Bubble
execute as @e[type=zombie,tag=RedBubble] at @s run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/red_bubble

#Spin Fire
execute as @e[type=zombie,tag=SpinFire] at @s run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/spinning_fire

#Invisible Keese Room
execute unless block -535 17 1977 minecraft:gold_block if entity @a[x=-527,y=20,z=1974,dx=0,dz=6] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/keese_room/summon
execute unless block -535 17 1976 minecraft:gold_block if block -535 17 1977 minecraft:gold_block unless entity @e[type=bat,tag=InvisibleKeeseRoom] unless entity @e[type=zombie,tag=Skulltula25] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/keese_room/finish
execute if entity @a[x=-525,y=20,z=1974,dx=0,dz=0] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/keese_room/reset

#Keese
#1
execute as @e[type=bat,tag=Keese67] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -90 ~
execute unless entity @e[type=bat,tag=Keese67,x=-531,y=21,z=1978,dx=0,dz=0] run fill -531 22 1978 -531 22 1978 minecraft:air
#2
execute as @e[type=bat,tag=Keese68] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -90 ~
execute unless entity @e[type=bat,tag=Keese68,x=-539,y=21,z=1978,dx=0,dz=0] run fill -539 22 1978 -539 22 1978 minecraft:air
#3
execute as @e[type=bat,tag=Keese69] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -90 ~
execute unless entity @e[type=bat,tag=Keese69,x=-535,y=21,z=1968,dx=0,dz=0] run fill -535 22 1968 -535 22 1968 minecraft:air

#Skulltula
execute as @e[type=zombie,tag=Skulltula25] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s -535 24 1974 -90 ~

#Wallmaster
execute as @e[type=zombie,tag=Wallmaster] at @s run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/wallmaster

#Spike Room
execute unless block -516 27 2013 minecraft:gold_block if entity @a[x=-527,y=20,z=1974,dx=0,dz=0] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/spike_room/summon
execute unless block -516 27 2013 minecraft:gold_block if entity @a[x=-510,y=31,z=2003,dx=0,dz=0] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/spike_room/summon
execute positioned -508 31 2001 if entity @a[distance=..1.5] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/spike_room/reset
execute positioned -532 31 2013 if entity @a[distance=..1.5] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/spike_room/reset

#Spike Traps
execute as @e[type=armor_stand,tag=BladeTrap] at @s run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/blade_trap

#Switches
#1
execute as @e[type=zombie,tag=Switch15] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/switches/switch_1
#2
execute as @e[type=zombie,tag=Switch16] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/switches/switch_2

#Wolfos Room
execute unless block -461 27 2015 minecraft:gold_block if entity @a[x=-472,y=31,z=2003,dx=0,dz=0] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/wolfos_room/summon
execute unless block -461 27 2015 minecraft:gold_block if entity @a[x=-452,y=30,z=2023,dx=0,dz=0] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/wolfos_room/summon
execute unless block -461 27 2016 minecraft:gold_block if block -461 27 2015 minecraft:gold_block unless entity @e[type=zombie,tag=Wolfos12] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/wolfos_room/finish
execute positioned -474 31 2001 if entity @a[distance=..1.5] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/wolfos_room/reset
execute positioned -450 30 2025 if entity @a[distance=..1.5] run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/wolfos_room/reset
