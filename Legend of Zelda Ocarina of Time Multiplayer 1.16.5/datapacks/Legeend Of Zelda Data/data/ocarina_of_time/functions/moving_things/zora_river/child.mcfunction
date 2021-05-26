#River Rupees
fill 1609 76 2285 1607 76 2287 minecraft:cobblestone

#Extra Footing
fill 1544 70 2312 1544 69 2311 minecraft:water

#Bean Guy
execute unless entity @a[x=1532,y=61,z=2311,dx=0,dz=0] unless entity @a[x=1530,y=61,z=2311,dx=0,dz=0] run tp @e[type=armor_stand,tag=BeanGuy] 1507 68.3 2312
execute unless entity @a[x=1532,y=61,z=2311,dx=0,dz=0] unless entity @a[x=1530,y=61,z=2311,dx=0,dz=0] run tp @e[type=villager,tag=RiverRupeeConvert] 1506 69 2311
clone 1503 69 2309 1503 69 2309 1506 69 2311

#Bean Spot
fill 1507 68 2315 1507 68 2315 minecraft:farmland[moisture=0]
execute if entity @a[x=1507,y=69,z=2315,dx=0,dz=0] unless entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean10] if entity @a[nbt={SelectedItem:{tag:{MagicBean:1b}}}] positioned 1507 69 2315 run function ocarina_of_time:items/magic_bean
execute if block 1507 69 2315 minecraft:pumpkin_stem[age=6] as @e[type=area_effect_cloud,tag=BeanSpot] unless entity @s[tag=PlantBean10] run tag @s add PlantBean10

#Frog Text
execute unless block 1545 65 2292 minecraft:gold_block positioned 1545 70 2293 if entity @a[distance=..4] run tellraw @a {"text":"Some frogs are looking at you from underwater..."}
execute unless block 1545 65 2292 minecraft:gold_block positioned 1545 70 2293 if entity @a[distance=..4] run fill 1545 65 2292 1545 65 2292 minecraft:gold_block
execute positioned 1545 70 2293 unless entity @a[distance=..4] run fill 1545 65 2292 1545 65 2292 minecraft:air

#Frogs
execute unless entity @a[tag=FrogMinigame] if entity @a[x=1543,y=71,z=2293,dx=0,dz=0] if entity @a[nbt={SelectedItem:{tag:{OcarinaSaria:1b}}}] run tag @a add FrogMinigame
execute unless entity @a[tag=FrogMinigame] if entity @a[x=1543,y=71,z=2293,dx=0,dz=0] if entity @a[nbt={SelectedItem:{tag:{OcarinaZelda:1b}}}] run tag @a add FrogMinigame
execute as @e[type=armor_stand,tag=Frog1] at @s if entity @a[tag=FrogMinigame] unless entity @s[scores={lifetime=-1}] run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/frog_ocarina
execute as @e[type=armor_stand,tag=Frog1] at @s if entity @a[tag=FrogMinigame] unless entity @a[x=1542,y=72,z=2292,dx=2,dz=2] run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/full_reset
execute as @e[type=armor_stand,tag=Frog1] if entity @s[scores={lifetime=-1}] run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/reset_1
