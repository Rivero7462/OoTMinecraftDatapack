fill 936 52 -1164 861 40 -1172 minecraft:air replace minecraft:water
fill 866 40 -1168 931 40 -1168 minecraft:smooth_stone_slab[waterlogged=false]
fill 931 52 -1166 931 41 -1166 minecraft:ladder[facing=west]
fill 932 40 -1169 932 42 -1172 minecraft:iron_bars[waterlogged=false,north=true,south=true] replace minecraft:iron_bars
fill 865 40 -1169 865 42 -1172 minecraft:iron_bars[waterlogged=false,north=true,south=true] replace minecraft:iron_bars
execute unless block 869 37 -1165 minecraft:gold_block if block 868 41 -1165 minecraft:chest[waterlogged=true] run clone 868 37 -1165 868 37 -1165 868 41 -1165
execute if block 869 37 -1165 minecraft:gold_block if block 868 41 -1165 minecraft:chest[waterlogged=true] run clone 870 37 -1165 870 37 -1165 868 41 -1165
fill 866 41 -1168 866 52 -1164 minecraft:vine[west=true]
execute if block 868 41 -1165 minecraft:chest{Items:[]} run fill 869 37 -1165 869 37 -1165 minecraft:gold_block

execute as @e[type=area_effect_cloud,tag=WaterLevel] run scoreboard players add @s timer 1
execute as @e[type=area_effect_cloud,tag=WaterLevel,scores={timer=1}] run gamemode spectator @a
execute as @e[type=area_effect_cloud,tag=WaterLevel,scores={timer=1..19}] run tp @p 929 63 -1172 0 60
execute as @e[type=area_effect_cloud,tag=WaterLevel,scores={timer=20}] run tp @p @s
execute as @e[type=area_effect_cloud,tag=WaterLevel,scores={timer=20}] run gamemode adventure @a
execute as @e[type=area_effect_cloud,tag=WaterLevel,scores={timer=21..}] run kill @s
