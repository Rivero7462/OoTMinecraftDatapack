execute if entity @s[scores={timer=1}] run fill 1128 54 3032 1149 56 3050 minecraft:water replace minecraft:air
execute if entity @s[scores={timer=1}] at @a if entity @a[x=1134,y=60,z=3049,dx=1,dz=0] run tp @a ~ 63 ~
execute if entity @s[scores={timer=1}] at @a if entity @a[x=1146,y=60,z=3042,dx=0,dz=2] run tp @a ~ 63 ~
execute if entity @s[scores={timer=1}] at @a if entity @a[x=1139,y=60,z=3034,dx=1,dz=0] run tp @a ~ 63 ~
execute if entity @s[scores={timer=1}] run clone 1141 52 3027 1143 56 3029 1139 58 3033
execute if entity @s[scores={timer=1}] run clone 1144 52 3025 1146 56 3027 1145 58 3042
execute if entity @s[scores={timer=1}] run clone 1147 52 3027 1149 56 3029 1133 58 3048

execute if entity @s[scores={timer=1..},nbt={HurtTime:10s}] run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.7
execute if entity @s[scores={timer=1..},nbt={HurtTime:10s}] run fill 1128 54 3032 1149 56 3050 minecraft:air replace minecraft:water
execute if entity @s[scores={timer=1..},nbt={HurtTime:10s}] run clone 1141 56 3027 1143 61 3029 1139 58 3033
execute if entity @s[scores={timer=1..},nbt={HurtTime:10s}] run clone 1144 56 3025 1146 62 3027 1145 58 3042
execute if entity @s[scores={timer=1..},nbt={HurtTime:10s}] run clone 1147 56 3027 1149 61 3029 1133 58 3048
execute if entity @s[scores={timer=1..},nbt={HurtTime:10s}] as @e[type=zombie,tag=TektiteWater] at @s if block ~ ~ ~ minecraft:water run tp @s ~ 57 ~
execute if entity @s[scores={timer=1..},nbt={HurtTime:10s}] run scoreboard players set @s timer 301

execute if entity @s[scores={timer=100..300}] run scoreboard players set @s timer 2

execute if entity @s[scores={timer=10..300}] if entity @e[type=area_effect_cloud,tag=Hookshot,distance=..1] run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.7
execute if entity @s[scores={timer=10..300}] if entity @e[type=area_effect_cloud,tag=Hookshot,distance=..1] run fill 1128 54 3032 1149 56 3050 minecraft:air replace minecraft:water
execute if entity @s[scores={timer=10..300}] if entity @e[type=area_effect_cloud,tag=Hookshot,distance=..1] run clone 1141 56 3027 1143 61 3029 1139 58 3033
execute if entity @s[scores={timer=10..300}] if entity @e[type=area_effect_cloud,tag=Hookshot,distance=..1] run clone 1144 56 3025 1146 62 3027 1145 58 3042
execute if entity @s[scores={timer=10..300}] if entity @e[type=area_effect_cloud,tag=Hookshot,distance=..1] run clone 1147 56 3027 1149 61 3029 1133 58 3048
execute if entity @s[scores={timer=10..300}] if entity @e[type=area_effect_cloud,tag=Hookshot,distance=..1] as @e[type=zombie,tag=TektiteWater] at @s if block ~ ~ ~ minecraft:water run tp @s ~ 57 ~
execute if entity @s[scores={timer=10..300}] if entity @e[type=area_effect_cloud,tag=Hookshot,distance=..1] run scoreboard players set @s timer 301
execute if entity @s[scores={timer=305..}] run tag @s add Off
