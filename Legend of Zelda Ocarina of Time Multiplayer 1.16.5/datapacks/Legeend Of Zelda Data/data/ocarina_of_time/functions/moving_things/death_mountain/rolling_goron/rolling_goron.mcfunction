execute if entity @a[x=2026,y=105,z=1477,dx=11,dy=6] run tag @s add RollGoron1
execute if entity @a[x=2025,y=109,z=1475,dx=1,dy=5] run tag @s add RollGoron1
execute if entity @a[x=2018,y=111,z=1474,dx=6,dy=3] run tag @s add RollGoron1

execute if entity @a[x=2023,y=108,z=1430,dx=12,dy=3] run tag @s add RollGoron1

execute if entity @s[tag=RollGoron1] if entity @a[tag=InDeathMountain] run function ocarina_of_time:moving_things/death_mountain/rolling_goron/rolling_goron_1
