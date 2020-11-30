execute unless entity @s[tag=Prize] run summon minecraft:zombie ^ ^ ^1 {Silent:1,DeathLootTable:"ocarina_of_time:entities/dampe_dig_heart",Tags:["Prize","Invisible"]}
execute if entity @s[tag=Prize] run summon minecraft:zombie ^ ^ ^1 {Silent:1,DeathLootTable:"ocarina_of_time:entities/dampe_dig",Tags:["Prize","Invisible"]}
kill @e[type=zombie,tag=Prize]
