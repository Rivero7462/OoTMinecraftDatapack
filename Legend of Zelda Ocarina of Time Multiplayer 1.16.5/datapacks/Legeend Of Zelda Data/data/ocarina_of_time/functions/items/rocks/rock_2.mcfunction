execute unless entity @a[tag=InDeathMountain] run summon minecraft:zombie ~ ~1.5 ~ {Tags:["Rock","Invisible","Fire"],Invulnerable:1b,Silent:1b,NoAI:1b,ArmorItems:[{},{},{},{id:"granite_slab",Count:1b}],DeathLootTable:"ocarina_of_time:entities/rock"}
execute if entity @a[tag=InDeathMountain] run summon minecraft:zombie ~ ~1.5 ~ {Tags:["Rock","Invisible","Fire"],Invulnerable:1b,Silent:1b,NoAI:1b,ArmorItems:[{},{},{},{id:"granite_slab",Count:1b}],DeathLootTable:"ocarina_of_time:entities/rock_2"}

tag @a add HoldingRock
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:granite_slab
