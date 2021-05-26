#Grass
fill 880 70 1431 880 70 1431 minecraft:grass
fill 881 70 1432 881 70 1432 minecraft:grass

#Pot Room
fill 983 66 1905 983 66 1905 minecraft:flower_pot
fill 983 66 1904 983 66 1904 minecraft:flower_pot
fill 984 66 1905 984 66 1905 minecraft:flower_pot
fill 984 66 1904 984 66 1904 minecraft:flower_pot
fill 985 66 1903 985 66 1903 minecraft:flower_pot
fill 985 66 1904 985 66 1904 minecraft:flower_pot
fill 985 66 1905 985 66 1905 minecraft:flower_pot
fill 986 66 1904 986 66 1904 minecraft:flower_pot
fill 986 66 1903 986 66 1903 minecraft:flower_pot
fill 987 66 1903 987 66 1903 minecraft:flower_pot
fill 987 66 1904 987 66 1904 minecraft:flower_pot
fill 988 66 1905 988 66 1905 minecraft:flower_pot
fill 988 66 1903 988 66 1903 minecraft:flower_pot
fill 989 66 1904 989 66 1904 minecraft:flower_pot
fill 981 66 1905 981 66 1905 minecraft:flower_pot
fill 981 67 1907 981 67 1907 minecraft:flower_pot
fill 982 67 1907 982 67 1907 minecraft:flower_pot
fill 983 67 1907 983 67 1907 minecraft:flower_pot
fill 985 67 1907 985 67 1907 minecraft:flower_pot
fill 986 67 1907 986 67 1907 minecraft:flower_pot
fill 987 67 1907 987 67 1907 minecraft:flower_pot
fill 989 67 1907 989 67 1907 minecraft:flower_pot
fill 990 67 1907 990 67 1907 minecraft:flower_pot
fill 984 70 1907 984 70 1907 minecraft:flower_pot
fill 988 70 1907 988 70 1907 minecraft:flower_pot
fill 845 64 1394 845 64 1394 minecraft:flower_pot
fill 848 64 1390 848 64 1390 minecraft:flower_pot
fill 854 64 1390 854 64 1390 minecraft:flower_pot
fill 987 66 1901 987 66 1901 minecraft:flower_pot
fill 988 66 1901 988 66 1901 minecraft:flower_pot
fill 989 66 1901 989 66 1901 minecraft:flower_pot
fill 989 66 1900 989 66 1900 minecraft:flower_pot
fill 988 66 1900 988 66 1900 minecraft:flower_pot
fill 988 66 1900 988 66 1900 minecraft:flower_pot
fill 987 66 1900 987 66 1900 minecraft:flower_pot
fill 986 66 1905 986 66 1905 minecraft:flower_pot
fill 987 66 1905 987 66 1905 minecraft:flower_pot
fill 988 66 1904 988 66 1904 minecraft:flower_pot
fill 991 67 1907 991 67 1907 minecraft:flower_pot
fill 984 66 1903 984 66 1903 minecraft:flower_pot
data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}
data merge entity @e[type=area_effect_cloud,tag=Pots2,limit=1] {Tags:["Pots"]}

#Extra Rupees
data remove block 872 74 1419 Items
execute positioned 872 74 1419 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block 872 74 1421 Items
execute positioned 872 74 1421 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block 872 74 1423 Items
execute positioned 872 74 1423 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block 872 74 1425 Items
execute positioned 872 74 1425 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block 872 74 1427 Items
execute positioned 872 74 1427 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy

#Dogs
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=wolf,tag=FakeDog1] run summon wolf 917 72 1394 {Tags:["FakeDog","Dog","PickupDog","FakeDog1"],Owner:"1",CollarColor:16,Invulnerable:1b,Silent:1b}
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=wolf,tag=FakeDog2] run summon wolf 915 72 1408 {Tags:["FakeDog","Dog","PickupDog","FakeDog2"],Owner:"1",CollarColor:12,Invulnerable:1b,Silent:1b}
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=wolf,tag=FakeDog3] run summon wolf 891 70 1420 {Tags:["FakeDog","Dog","PickupDog","FakeDog3"],Owner:"1",CollarColor:12,Invulnerable:1b,Silent:1b}
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=wolf,tag=FakeDog4] run summon wolf 878 70 1414 {Tags:["FakeDog","Dog","PickupDog","FakeDog4"],Owner:"1",CollarColor:16,Invulnerable:1b,Silent:1b}
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=wolf,tag=FakeDog5] run summon wolf 882 70 1424 {Tags:["FakeDog","Dog","PickupDog","FakeDog5"],Owner:"1",CollarColor:12,Invulnerable:1b,Silent:1b}
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=wolf,tag=FakeDog6] run summon wolf 879 70 1430 {Tags:["FakeDog","Dog","PickupDog","FakeDog6"],Owner:"1",CollarColor:12,Invulnerable:1b,Silent:1b}
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=wolf,tag=FakeDog7] run summon wolf 892 70 1429 {Tags:["FakeDog","Dog","PickupDog","FakeDog7"],Owner:"1",CollarColor:12,Invulnerable:1b,Silent:1b}
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=wolf,tag=FakeDog8] run summon wolf 885 70 1435 {Tags:["FakeDog","Dog","PickupDog","FakeDog8"],Owner:"1",CollarColor:12,Invulnerable:1b,Silent:1b}
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=wolf,tag=FakeDog9] run summon wolf 882 70 1459 {Tags:["FakeDog","Dog","PickupDog","FakeDog9"],Owner:"1",CollarColor:16,Invulnerable:1b,Silent:1b}
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=wolf,tag=FakeDog10] run summon wolf 851 70 1427 {Tags:["FakeDog","Dog","PickupDog","FakeDog10"],Owner:"1",CollarColor:12,Invulnerable:1b,Silent:1b}
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=wolf,tag=FakeDog11] run summon wolf 853 70 1419 {Tags:["FakeDog","Dog","PickupDog","FakeDog11"],Owner:"1",CollarColor:16,Invulnerable:1b,Silent:1b}
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=wolf,tag=FakeDog12] run summon wolf 859 70 1413 {Tags:["FakeDog","Dog","PickupDog","FakeDog12"],Owner:"1",CollarColor:12,Invulnerable:1b,Silent:1b}
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=armor_stand,tag=MamamuYan,tag=Prize] run tp @e[type=wolf,tag=Richard] 894 70 1436
execute if entity @a[scores={time=13001..23000}] if entity @e[type=armor_stand,tag=MamamuYan,tag=Prize] run kill @e[type=wolf,tag=Richard]

#Shooting Gallery
data merge entity @e[type=villager,tag=ShootingGallery,limit=1] {NoAI:1b,Tags:["ShootingGallery","Invisible"],CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},buyB:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Fairy Slingshot\"}"},Unbreakable:1b,Damage:9,HideFlags:63,Slingshot:1b,MainHandItem:1b}},sell:{id:shears,Count:1,tag:{display:{Name:"\"Shooting Game\""},ShootingGallery:1b,Unbreakable:1b,Damage:9,HideFlags:63,Slingshot:1b,MainHandItem:1b}},rewardExp:0b}]}}
scoreboard players set @e[type=armor_stand,tag=ShootingGallery] text 0
tp @e[type=villager,tag=ShootingGallery] 877.2 60 1405

#Spike Trap
#1
execute unless entity @e[type=armor_stand,tag=BladeTrap12] run summon minecraft:armor_stand 858 38 1426 {Tags:["BladeTrap12","BladeTrap","Type2"],Rotation:[0f],Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:dead_fire_coral,Count:1b,tag:{CustomModelData:1}}],DisabledSlots:4144959}

#Cuccos
summon minecraft:chicken 849 36.5 1427 {PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","GoodCucco","Resist"]}
summon minecraft:chicken 853 37 1424 {PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","GoodCucco","Resist"]}

#Bazzar
execute if entity @e[type=area_effect_cloud,tag=Progress,tag=Bombs] run data merge entity @e[type=villager,tag=CastleShop1,limit=1] {Tags:["CastleShop1","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:stick,Count:1,tag:{display:{Name:"\"Deku Stick\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:35,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:tnt,Count:5,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:16,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:"shield",Count:1,tag:{display:{Name:"\"Hylian Shield\""},Unbreakable:1,Damage:2}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},buyB:{id:book,Count:1,tag:{display:{Name:"{\"text\":\"Shield Discount\"}"}}},sell:{id:"shield",Count:1,tag:{display:{Name:"\"Hylian Shield\""},Unbreakable:1,Damage:2}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:15,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:9999999}]}}
execute unless entity @e[type=area_effect_cloud,tag=Progress,tag=Bombs] run data merge entity @e[type=villager,tag=CastleShop1,limit=1] {Tags:["CastleShop1","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:stick,Count:1,tag:{display:{Name:"\"Deku Stick\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:35,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:tnt,Count:5,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:0},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:16,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:"shield",Count:1,tag:{display:{Name:"\"Hylian Shield\""},Unbreakable:1,Damage:2}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},buyB:{id:book,Count:1,tag:{display:{Name:"{\"text\":\"Shield Discount\"}"}}},sell:{id:"shield",Count:1,tag:{display:{Name:"\"Hylian Shield\""},Unbreakable:1,Damage:2}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:15,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:9999999}]}}

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone8] run summon minecraft:armor_stand 919 72 1407 {Tags:["GossipStone8","GossipStone","Npc"],Rotation:[90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#2
execute unless entity @e[type=armor_stand,tag=GossipStone9] run summon minecraft:armor_stand 919 72 1409 {Tags:["GossipStone9","GossipStone","Npc"],Rotation:[90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#3
execute unless entity @e[type=armor_stand,tag=GossipStone10] run summon minecraft:armor_stand 919 72 1411 {Tags:["GossipStone10","GossipStone","Npc"],Rotation:[90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#4
execute unless entity @e[type=armor_stand,tag=GossipStone11] run summon minecraft:armor_stand 919 72 1413 {Tags:["GossipStone11","GossipStone","Npc"],Rotation:[90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
