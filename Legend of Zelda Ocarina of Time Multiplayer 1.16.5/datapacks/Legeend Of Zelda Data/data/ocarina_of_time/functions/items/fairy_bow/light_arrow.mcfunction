tag @s add LightArrow
data merge entity @s {Potion:"luck",NoGravity:1b,Color:-1,pickup:0b}
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1

#Purple Rupee
execute at @s positioned ~ ~-1 ~ as @e[type=zombie,distance=..1.5] unless entity @s[tag=GoldSkull] unless entity @s[tag=LikeLike] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/light_arrow"}
execute at @s as @e[type=zombie,distance=..1.5] unless entity @s[tag=GoldSkull] unless entity @s[tag=LikeLike] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/light_arrow"}
execute at @s positioned ~ ~-2 ~ as @e[type=wither_skeleton,distance=..1.5] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/light_arrow"}
execute at @s positioned ~ ~-1 ~ as @e[type=wither_skeleton,distance=..1.5] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/light_arrow"}
execute at @s as @e[type=wither_skeleton,distance=..1.5] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/light_arrow"}

#Kill
execute unless entity @a[distance=..80] run kill @s
execute if entity @s[nbt={life:50s}] run kill @s
execute if entity @s[nbt={life:0s}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=100..}] run kill @s

#Rebound
execute if entity @s[scores={lifetime=2}] store result score @s timer run data get entity @s Rotation[0]
execute if entity @s[scores={lifetime=3..}] store result score @s GameTimer run data get entity @s Rotation[0]
execute if entity @s[scores={lifetime=3..}] unless score @s timer = @s GameTimer run kill @s
