kill @e[type=zombie,tag=Armos]
kill @e[type=zombie,tag=TorchSlug]
kill @e[type=zombie,tag=Mimic]
kill @e[type=zombie,tag=Beamos]
fill -27 116 792 -27 116 792 minecraft:stone_pressure_plate
function ocarina_of_time:music/boss
summon minecraft:zombie -25 127 763 {Tags:["Koume","Twinrova","Invisible","Resist"],Rotation:[135f],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:18}}],ArmorDropChances:[0f,0f,0f,0f]}
summon minecraft:zombie -30 127 763 {Tags:["Kotake","Twinrova","Invisible","Resist"],Rotation:[-45f],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:17}}],ArmorDropChances:[0f,0f,0f,0f]}
summon minecraft:area_effect_cloud -39 127 775 {Tags:["Twinrova","TwinrovaSpot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud -15 127 775 {Tags:["Twinrova","TwinrovaSpot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud -15 127 751 {Tags:["Twinrova","TwinrovaSpot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud -39 127 751 {Tags:["Twinrova","TwinrovaSpot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
fill -27 117 763 -27 117 763 minecraft:gold_block
