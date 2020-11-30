scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run particle minecraft:flame ~ ~2.15 ~
execute if entity @s[scores={timer=1}] run particle minecraft:smoke ~ ~2.15 ~
execute if entity @s[scores={timer=5}] run particle minecraft:smoke ~ ~2.15 ~
execute if entity @s[scores={timer=10}] run scoreboard players set @s timer 0
execute if block 1708 92 940 minecraft:iron_bars if entity @s[tag=Start] unless entity @a[x=1688,y=91,z=938,dx=4,dz=4] run function ocarina_of_time:moving_things/shadow_temple/bird/door
