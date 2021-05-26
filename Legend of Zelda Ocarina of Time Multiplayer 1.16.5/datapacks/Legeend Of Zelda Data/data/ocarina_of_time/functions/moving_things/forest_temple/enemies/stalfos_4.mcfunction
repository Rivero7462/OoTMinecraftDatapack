fill 886 68 -1201 886 68 -1201 minecraft:stone_pressure_plate
function ocarina_of_time:music/mini_boss
summon minecraft:zombie 902 68 -1201 {Tags:["Stalfos1","Stalfos","Invisible","Room1"],Rotation:[-15f],PersistenceRequired:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:78}}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:2}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
summon minecraft:armor_stand 902 68 -1201 {Tags:["StalfosShield1","StalfosShield"],Invisible:1b,HandItems:[{},{id:shield,Count:1b,tag:{BlockEntityTag:{Base:8,Patterns:[{Pattern:"cbo",Color:4}]}}}],Marker:1b}
fill 897 69 -1211 897 69 -1211 minecraft:gold_block
