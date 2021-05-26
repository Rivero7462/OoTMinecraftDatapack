scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] at @a run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["IceBlock"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={timer=1}] align xyz run tp @s ~.5 ~ ~.5

execute at @e[type=area_effect_cloud,tag=IceBlock] run tp @a ~ ~ ~

#North
execute unless entity @s[scores={timer=1}] unless block ~ ~-.1 ~ minecraft:air if entity @s[tag=North] if block ~ ~ ~-2 minecraft:air if block ~-1 ~ ~-2 minecraft:air if block ~1 ~ ~-2 minecraft:air run tp @s ~ ~ ~-.2
execute unless entity @s[scores={timer=1}] unless block ~ ~ ~-2 minecraft:air if entity @s[tag=North] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:light_blue_concrete
execute unless entity @s[scores={timer=1}] unless block ~ ~ ~-2 minecraft:air if entity @s[tag=North] run kill @e[tag=IceBlock]
execute unless entity @s[scores={timer=1}] unless block ~-1 ~ ~-2 minecraft:air if entity @s[tag=North] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:light_blue_concrete
execute unless entity @s[scores={timer=1}] unless block ~-1 ~ ~-2 minecraft:air if entity @s[tag=North] run kill @e[tag=IceBlock]
execute unless entity @s[scores={timer=1}] unless block ~1 ~ ~-2 minecraft:air if entity @s[tag=North] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:light_blue_concrete
execute unless entity @s[scores={timer=1}] unless block ~1 ~ ~-2 minecraft:air if entity @s[tag=North] run kill @e[tag=IceBlock]

#South
execute unless entity @s[scores={timer=1}] unless block ~ ~-.1 ~ minecraft:air if entity @s[tag=South] if block ~ ~ ~2 minecraft:air if block ~-1 ~ ~2 minecraft:air if block ~1 ~ ~2 minecraft:air run tp @s ~ ~ ~.2
execute unless entity @s[scores={timer=1}] unless block ~ ~ ~2 minecraft:air if entity @s[tag=South] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:light_blue_concrete
execute unless entity @s[scores={timer=1}] unless block ~ ~ ~2 minecraft:air if entity @s[tag=South] run kill @e[tag=IceBlock]
execute unless entity @s[scores={timer=1}] unless block ~-1 ~ ~2 minecraft:air if entity @s[tag=South] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:light_blue_concrete
execute unless entity @s[scores={timer=1}] unless block ~-1 ~ ~2 minecraft:air if entity @s[tag=South] run kill @e[tag=IceBlock]
execute unless entity @s[scores={timer=1}] unless block ~1 ~ ~2 minecraft:air if entity @s[tag=South] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:light_blue_concrete
execute unless entity @s[scores={timer=1}] unless block ~1 ~ ~2 minecraft:air if entity @s[tag=South] run kill @e[tag=IceBlock]

#East
execute unless entity @s[scores={timer=1}] unless block ~ ~-.1 ~ minecraft:air if entity @s[tag=East] if block ~2 ~ ~ minecraft:air if block ~2 ~ ~-1 minecraft:air if block ~2 ~ ~1 minecraft:air run tp @s ~.2 ~ ~
execute unless entity @s[scores={timer=1}] unless block ~2 ~ ~ minecraft:air if entity @s[tag=East] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:light_blue_concrete
execute unless entity @s[scores={timer=1}] unless block ~2 ~ ~ minecraft:air if entity @s[tag=East] run kill @e[tag=IceBlock]
execute unless entity @s[scores={timer=1}] unless block ~2 ~ ~-1 minecraft:air if entity @s[tag=East] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:light_blue_concrete
execute unless entity @s[scores={timer=1}] unless block ~2 ~ ~-1 minecraft:air if entity @s[tag=East] run kill @e[tag=IceBlock]
execute unless entity @s[scores={timer=1}] unless block ~2 ~ ~1 minecraft:air if entity @s[tag=East] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:light_blue_concrete
execute unless entity @s[scores={timer=1}] unless block ~2 ~ ~1 minecraft:air if entity @s[tag=East] run kill @e[tag=IceBlock]

#West
execute unless entity @s[scores={timer=1}] unless block ~ ~-.1 ~ minecraft:air if entity @s[tag=West] if block ~-2 ~ ~ minecraft:air if block ~-2 ~ ~-1 minecraft:air if block ~-2 ~ ~1 minecraft:air run tp @s ~-.2 ~ ~
execute unless entity @s[scores={timer=1}] unless block ~-2 ~ ~ minecraft:air if entity @s[tag=West] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:light_blue_concrete
execute unless entity @s[scores={timer=1}] unless block ~-2 ~ ~ minecraft:air if entity @s[tag=West] run kill @e[tag=IceBlock]
execute unless entity @s[scores={timer=1}] unless block ~-2 ~ ~-1 minecraft:air if entity @s[tag=West] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:light_blue_concrete
execute unless entity @s[scores={timer=1}] unless block ~-2 ~ ~-1 minecraft:air if entity @s[tag=West] run kill @e[tag=IceBlock]
execute unless entity @s[scores={timer=1}] unless block ~-2 ~ ~1 minecraft:air if entity @s[tag=West] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:light_blue_concrete
execute unless entity @s[scores={timer=1}] unless block ~-2 ~ ~1 minecraft:air if entity @s[tag=West] run kill @e[tag=IceBlock]

#Reset
execute if block ~ ~-.1 ~ minecraft:air run fill 2026 26 2282 2028 26 2284 minecraft:light_blue_concrete
execute if block ~ ~-.1 ~ minecraft:air run kill @e[tag=IceBlock]
