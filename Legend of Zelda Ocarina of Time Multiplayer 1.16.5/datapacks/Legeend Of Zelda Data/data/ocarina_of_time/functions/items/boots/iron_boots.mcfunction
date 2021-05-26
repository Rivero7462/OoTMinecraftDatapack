#Main
execute if block ~ ~ ~ minecraft:water run effect clear @s minecraft:slowness
execute unless block ~ ~ ~ minecraft:water run effect give @s minecraft:slowness 1 1 true
execute unless block ~ ~-.1 ~ minecraft:water run kill @e[type=area_effect_cloud,tag=Sink]
execute at @a if block ~ ~-.57 ~ minecraft:granite_wall run kill @e[type=area_effect_cloud,tag=Sink]
tag @a remove SwimUp
tag @a remove NoIronBoots

#Spikes
execute if block ~ ~-1 ~ minecraft:granite_wall align y run tp @e[type=area_effect_cloud,tag=Sink] ~ ~.75 ~

#One block Steps
execute rotated ~ 0 positioned ^ ^1 ^1 if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ #ocarina_of_time:iron_boots run tag @a add IronBootsClimb
execute rotated ~ 0 positioned ^ ^1 ^1 if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ #ocarina_of_time:iron_boots run tag @a add IronBootsClimb
execute rotated ~ 0 positioned ^ ^1 ^1 unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:air run tag @a remove IronBootsClimb
execute rotated ~ 0 positioned ^ ^1 ^1 unless block ~ ~-1.5 ~ #ocarina_of_time:iron_boots run tag @a remove IronBootsClimb

#FrontWall
execute unless entity @a[tag=IronBootsClimb] if block ~ ~-.6 ~ minecraft:water rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~1 ~ minecraft:air unless block ~ ~ ~ minecraft:water unless entity @e[type=area_effect_cloud,tag=Sink] at @a run summon minecraft:area_effect_cloud ~ ~.2 ~ {Tags:["Sink","FrontWall"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#BackWall
execute unless entity @a[tag=IronBootsClimb] if block ~ ~-.6 ~ minecraft:water rotated ~ 0 positioned ^ ^ ^-1 unless block ~ ~1 ~ minecraft:air unless block ~ ~ ~ minecraft:water unless entity @e[type=area_effect_cloud,tag=Sink] at @a run summon minecraft:area_effect_cloud ~ ~.2 ~ {Tags:["Sink","BackWall"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#LeftWall
execute unless entity @a[tag=IronBootsClimb] if block ~ ~-.6 ~ minecraft:water rotated ~ 0 positioned ^1 ^ ^ unless block ~ ~1 ~ minecraft:air unless block ~ ~ ~ minecraft:water unless entity @e[type=area_effect_cloud,tag=Sink] at @a run summon minecraft:area_effect_cloud ~ ~.2 ~ {Tags:["Sink","LeftWall"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#RightWall
execute unless entity @a[tag=IronBootsClimb] if block ~ ~-.6 ~ minecraft:water rotated ~ 0 positioned ^-1 ^ ^ unless block ~ ~1 ~ minecraft:air unless block ~ ~ ~ minecraft:water unless entity @e[type=area_effect_cloud,tag=Sink] at @a run summon minecraft:area_effect_cloud ~ ~.2 ~ {Tags:["Sink","RightWall"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#Empty Water
execute unless entity @a[tag=IronBootsClimb] if block ~ ~-1 ~.5 minecraft:water if block ~ ~-1 ~-.5 minecraft:water if block ~.5 ~-1 ~ minecraft:water if block ~-.5 ~-1 ~ minecraft:water unless entity @e[type=area_effect_cloud,tag=Sink] run summon minecraft:area_effect_cloud ~ ~.2 ~ {Tags:["Sink","OpenWater"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
