summon minecraft:zombie -535 24 1974 {PersistenceRequired:1b,Tags:["Skulltula25","Skulltula","Invisible"],Rotation:[-90f],DeathLootTable:"ocarina_of_time:entities/skulltula",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],ArmorDropChances:[0f,0f,0f,0f],Silent:1}

fill -531 22 1978 -531 22 1978 minecraft:barrier
summon minecraft:bat -531 21 1978 {Tags:["Keese67","Keese","Hanging","InvisibleKeeseRoom"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
fill -539 22 1978 -539 22 1978 minecraft:barrier
summon minecraft:bat -539 21 1978 {Tags:["Keese68","Keese","Hanging","InvisibleKeeseRoom"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
fill -535 22 1968 -535 22 1968 minecraft:barrier
summon minecraft:bat -535 21 1968 {Tags:["Keese69","Keese","Hanging","InvisibleKeeseRoom"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}

effect give @e[type=bat,tag=Keese67] invisibility 10000 0 true
effect give @e[type=bat,tag=Keese68] invisibility 10000 0 true
effect give @e[type=bat,tag=Keese69] invisibility 10000 0 true
effect give @e[type=zombie,tag=Skulltula25] invisibility 10000 0 true

fill -535 17 1977 -535 17 1977 minecraft:gold_block
