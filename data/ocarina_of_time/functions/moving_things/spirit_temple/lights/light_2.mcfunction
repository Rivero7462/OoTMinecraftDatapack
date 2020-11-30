execute unless block -78 107 893 minecraft:gold_block positioned -76 110 876 if block ~ ~ ~ minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/lights/sun_block
execute unless block -78 107 893 minecraft:gold_block positioned -76 110 875 if block ~ ~ ~ minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/lights/sun_block
execute unless block -78 107 893 minecraft:gold_block positioned -76 110 874 if block ~ ~ ~ minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/lights/sun_block
execute unless block -78 107 893 minecraft:gold_block positioned -78 110 876 if block ~ ~ ~ minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/lights/sun_block
execute unless block -78 107 893 minecraft:gold_block positioned -78 110 875 if block ~ ~ ~ minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/lights/sun_block
execute unless block -78 107 893 minecraft:gold_block positioned -78 110 874 if block ~ ~ ~ minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/lights/sun_block
execute unless block -78 107 893 minecraft:gold_block positioned -77 110 874 if block ~ ~ ~ minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/lights/sun_block
execute unless block -78 107 893 minecraft:gold_block positioned -77 110 876 if block ~ ~ ~ minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/lights/sun_block

particle minecraft:composter ~ ~ ~ .5 .5 .5 0 1 force
execute if block ~ ~ ~ minecraft:air positioned ~1.5 ~-1.8 ~ run function ocarina_of_time:moving_things/spirit_temple/lights/light_2

#Mirror
execute if entity @a[x=-78,y=110,z=874,dx=2,dy=1,dz=2] run tag @a add Reflect
execute if entity @a[x=-79,y=110,z=873,dx=4,dy=1,dz=4] unless entity @a[x=-78,y=110,z=874,dx=2,dy=1,dz=2] run tag @a remove Reflect
