function ocarina_of_time:music/fire_temple
tp @a 3020 45 1956 90 ~
fill 3020 46 1957 3020 46 1957 minecraft:barrier
fill 3021 46 1956 3021 46 1956 minecraft:barrier
fill 3020 46 1955 3020 46 1955 minecraft:barrier
fill 3019 46 1956 3019 46 1956 minecraft:barrier
kill @e[tag=Volvagia]
summon minecraft:zombie 3014 40 1956 {Tags:["FakeVolvagia"],Invulnerable:1b,Rotation:[-10f,-90f],NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:dead_tube_coral_fan,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:40,Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
fill 3008 40 1954 3008 40 1954 minecraft:gold_block
