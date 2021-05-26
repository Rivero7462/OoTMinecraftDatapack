tp @a ~ ~ ~
tag @a remove IronBootsClimb

execute if block ~ ~-.6 ~ minecraft:water run tp @s ~ ~-.1 ~
execute if block ~ ~-.6 ~ minecraft:air run tp @s ~ ~-.1 ~

#Open
execute unless block ~-.33 ~-.6 ~ minecraft:water unless block ~-.33 ~-.6 ~ minecraft:air run kill @e[type=area_effect_cloud,tag=Sink,tag=OpenWater]
execute unless block ~.33 ~-.6 ~ minecraft:water unless block ~.33 ~-.6 ~ minecraft:air run kill @e[type=area_effect_cloud,tag=Sink,tag=OpenWater]
execute unless block ~ ~-.6 ~-.33 minecraft:water unless block ~ ~-.6 ~-.33 minecraft:air run kill @e[type=area_effect_cloud,tag=Sink,tag=OpenWater]
execute unless block ~ ~-.6 ~.33 minecraft:water unless block ~ ~-.6 ~.33 minecraft:air run kill @e[type=area_effect_cloud,tag=Sink,tag=OpenWater]

#Walls
execute unless block ~ ~-.6 ~ minecraft:water run kill @e[type=area_effect_cloud,tag=Sink,tag=LeftWall]
execute unless block ~ ~-.6 ~ minecraft:water run kill @e[type=area_effect_cloud,tag=Sink,tag=RightWall]
execute unless block ~ ~-.6 ~ minecraft:water run kill @e[type=area_effect_cloud,tag=Sink,tag=FrontWall]
execute unless block ~ ~-.6 ~ minecraft:water run kill @e[type=area_effect_cloud,tag=Sink,tag=BackWall]

