#Sun Render Distance
execute if entity @a[distance=..25] unless entity @s[tag=Light] unless entity @s[tag=Sun9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:91}}]}
execute if entity @a[distance=..25] if entity @s[tag=Light] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:90}}]}

execute unless entity @a[distance=..25] run data merge entity @s {ArmorItems:[{},{},{},{}]}

#Types
execute if entity @s[tag=Sun3,tag=Light] run clone 11 96 855 11 96 855 11 99 855 replace move
execute if entity @s[tag=Sun3,tag=Light] run kill @s

execute if entity @s[tag=Sun4,tag=Light] run clone 11 96 860 11 96 860 11 99 860 replace move
execute if entity @s[tag=Sun4,tag=Light] run kill @s

execute if entity @s[tag=Sun5,tag=Light] unless block -5 99 856 minecraft:stone_pressure_plate run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:90}}]}
execute if entity @s[tag=Sun5,tag=Light] unless block -5 99 856 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1 1
execute if entity @s[tag=Sun5,tag=Light] unless block -5 99 856 minecraft:stone_pressure_plate run tag @s add Light
execute if entity @s[tag=Sun5,tag=Light] unless block -5 99 856 minecraft:stone_pressure_plate run fill -5 99 856 -5 99 856 minecraft:stone_pressure_plate

execute if entity @s[tag=Sun6,tag=Light] run summon minecraft:zombie 4 111 855 {Tags:["Wallmaster7","Wallmaster","Invisible","Fire"],PersistenceRequired:1b,Rotation:[0f],ArmorItems:[{},{},{},{}],DeathLootTable:"ocarina_of_time:entities/wallmaster",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Sun6,tag=Light] run kill @s

execute if entity @s[tag=Sun7,tag=Light] unless block 25 110 870 minecraft:stone_pressure_plate run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:90}}]}
execute if entity @s[tag=Sun7,tag=Light] unless block 25 110 870 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1 1
execute if entity @s[tag=Sun7,tag=Light] unless block 25 110 870 minecraft:stone_pressure_plate run tag @s add Light
execute if entity @s[tag=Sun7,tag=Light] unless block 25 110 870 minecraft:stone_pressure_plate run fill 25 110 870 25 110 870 minecraft:stone_pressure_plate

execute if entity @s[tag=Sun8,tag=Light] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:90}}]}
execute if entity @s[tag=Sun8,tag=Light] run tag @s add Light
execute if entity @s[tag=Sun8,tag=Light] run scoreboard players add @s timer 1
execute if entity @s[tag=Sun8,tag=Light,scores={timer=1}] run clone -43 132 847 -39 133 851 -29 130 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=5}] run clone -43 132 847 -39 133 851 -29 129 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=10}] run clone -43 132 847 -39 133 851 -29 128 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=15}] run clone -43 132 847 -39 133 851 -29 127 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=20}] run clone -43 132 847 -39 133 851 -29 126 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=25}] run clone -43 132 847 -39 133 851 -29 125 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=30}] run clone -43 132 847 -39 133 851 -29 124 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=35}] run clone -43 132 847 -39 133 851 -29 123 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=40}] run clone -43 132 847 -39 133 851 -29 122 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=45}] run clone -43 132 847 -39 133 851 -29 121 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=50}] run clone -43 132 847 -39 133 851 -29 120 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=55}] run clone -43 132 847 -39 133 851 -29 119 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=60}] run clone -43 132 847 -39 133 851 -29 118 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=65}] run clone -43 132 847 -39 133 851 -29 117 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=70}] run clone -43 132 847 -39 133 851 -29 116 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=75}] run clone -43 132 847 -39 133 851 -29 115 847
execute if entity @s[tag=Sun8,tag=Light,scores={timer=80}] run clone -43 132 847 -39 133 851 -29 114 847

execute if entity @s[tag=Sun9,tag=Light] run fill -28 117 840 -26 119 840 minecraft:air
execute if entity @s[tag=Sun9,tag=Light] run kill @s

execute if entity @s[tag=Sun10,tag=Light] run clone -45 132 854 -45 132 854 -45 136 854 replace move
execute if entity @s[tag=Sun10,tag=Light] run kill @s

execute if entity @s[tag=Sun11,tag=Light] run summon minecraft:zombie -532 44 2032 {Tags:["Wallmaster9","Wallmaster","Invisible","Fire"],PersistenceRequired:1b,Rotation:[0f],ArmorItems:[{},{},{},{}],DeathLootTable:"ocarina_of_time:entities/wallmaster",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Sun11,tag=Light] run kill @s

execute if entity @s[tag=Sun12,tag=Light] run summon minecraft:zombie -532 44 2032 {Tags:["Wallmaster10","Wallmaster","Invisible","Fire"],PersistenceRequired:1b,Rotation:[0f],ArmorItems:[{},{},{},{}],DeathLootTable:"ocarina_of_time:entities/wallmaster",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Sun12,tag=Light] run kill @s

execute if entity @s[tag=Sun13,tag=Light] unless block -537 31 2038 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1 1
execute if entity @s[tag=Sun13,tag=Light] unless block -537 31 2038 minecraft:stone_pressure_plate run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:90}}]}
execute if entity @s[tag=Sun13,tag=Light] unless block -537 31 2038 minecraft:stone_pressure_plate run fill -537 31 2038 -537 31 2038 minecraft:stone_pressure_plate replace minecraft:air

execute if entity @s[tag=Sun14,tag=Light] run summon minecraft:zombie -532 44 2032 {Tags:["Wallmaster11","Wallmaster","Invisible","Fire"],PersistenceRequired:1b,Rotation:[0f],ArmorItems:[{},{},{},{}],DeathLootTable:"ocarina_of_time:entities/wallmaster",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Sun14,tag=Light] run kill @s
