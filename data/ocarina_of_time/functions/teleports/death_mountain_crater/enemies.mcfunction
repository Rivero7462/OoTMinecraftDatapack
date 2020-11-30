#Red Bubble
#1
execute unless entity @a[tag=Adult] unless entity @e[type=zombie,tag=RedBubble15] run summon minecraft:zombie 2669 31 1917 {Tags:["RedBubble15","RedBubble","Invisible","Fire"],Rotation:[-45f],ArmorItems:[{},{},{},{id:bubble_coral_block,Count:1b}],IsBaby:1b,PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/bubble",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f]}
#2
execute unless entity @a[tag=Adult] unless entity @e[type=zombie,tag=RedBubble16] run summon minecraft:zombie 2678 31 1915 {Tags:["RedBubble16","RedBubble","Invisible","Fire"],Rotation:[135f],ArmorItems:[{},{},{},{id:bubble_coral_block,Count:1b}],IsBaby:1b,PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/bubble",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f]}

#Business Scrub
#1
execute unless entity @a[tag=Adult] unless entity @e[type=armor_stand,tag=BusinessScrub9] run summon minecraft:armor_stand 2717 43.3 1960 {Tags:["BusinessScrub","BusinessScrub9","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
