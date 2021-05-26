#Grass
fill 1509 68 1929 1510 68 1929 minecraft:grass
fill 1511 68 1928 1511 68 1928 minecraft:grass
fill 1510 68 1927 1509 68 1927 minecraft:grass
fill 1555 70 1956 1555 70 1957 minecraft:grass
fill 1554 70 1957 1554 70 1957 minecraft:grass
fill 1601 71 1961 1606 71 1963 minecraft:grass replace minecraft:air
fill 1603 71 1960 1606 71 1960 minecraft:grass

#Rocks
scoreboard players set @a HoldingRock 1
fill 1513 70 1948 1513 70 1948 minecraft:granite_slab
fill 1528 78 1892 1528 78 1892 minecraft:granite_slab
fill 1601 71 1960 1601 71 1960 minecraft:granite_slab

#Pots
execute unless entity @a[tag=Adult] run fill 1515 74 1952 1515 74 1952 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 1515 74 1953 1515 74 1953 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 1515 74 1954 1515 74 1954 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 1532 73 1905 1532 73 1905 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 1533 73 1905 1533 73 1905 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 1534 73 1905 1534 73 1905 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 1518 76 1900 1518 76 1900 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 1517 76 1900 1517 76 1900 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 1516 76 1900 1516 76 1900 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 1545 73 1922 1545 73 1922 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 1544 73 1922 1544 73 1922 minecraft:flower_pot
fill 1647 38 1956 1647 38 1956 minecraft:flower_pot
fill 1646 38 1957 1646 38 1957 minecraft:flower_pot
fill 1645 38 1956 1645 38 1956 minecraft:flower_pot
fill 1647 38 1945 1647 38 1945 minecraft:flower_pot
fill 1646 38 1944 1646 38 1944 minecraft:flower_pot
fill 1645 38 1945 1645 38 1945 minecraft:flower_pot

data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Shooting Gallery
data merge entity @e[type=villager,tag=ShootingGallery,limit=1] {Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},buyB:{id:arrow,Count:1,tag:{display:{Name:"{\"text\":\"Arrow\"}"},NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}},sell:{id:arrow,Count:1,tag:{display:{Name:"\"Shooting Game\""},ShootingGallery:1b,NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}},rewardExp:0b}]}}
scoreboard players set @e[type=armor_stand,tag=ShootingGallery2] text 0
tp @e[type=villager,tag=ShootingGallery] 1521.6 47.7 1952

#Bazaar
execute if entity @e[type=area_effect_cloud,tag=Progress,tag=FairyBow] run data merge entity @e[type=villager,tag=VillageShop,limit=1] {Tags:["VillageShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:stick,Count:1,tag:{display:{Name:"\"Deku Stick\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Arrows (10)\"}"},Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup5:1b}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:18,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Arrows (50)\"}"},Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup50:1b}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:35,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:tnt,Count:5,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:16,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:"shield",Count:1,tag:{display:{Name:"\"Hylian Shield\""},Unbreakable:1,Damage:2}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:15,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:9999999}]}}
execute unless entity @e[type=area_effect_cloud,tag=Progress,tag=FairyBow] run data merge entity @e[type=villager,tag=VillageShop,limit=1] {Tags:["VillageShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:stick,Count:1,tag:{display:{Name:"\"Deku Stick\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Arrows (10)\"}"},Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup5:1b}},rewardExp:0b,maxUses:0},{buy:{id:lapis_lazuli,Count:18,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Arrows (50)\"}"},Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup50:1b}},rewardExp:0b,maxUses:0},{buy:{id:lime_dye,Count:35,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:tnt,Count:5,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:16,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:"shield",Count:1,tag:{display:{Name:"\"Hylian Shield\""},Unbreakable:1,Damage:2}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:15,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:9999999}]}}

#Signs
execute unless entity @a[tag=Adult] unless block 1544 70 1930 minecraft:oak_sign run clone 1544 67 1930 1544 67 1930 1544 70 1930
execute unless entity @a[tag=Adult] unless block 1527 78 1890 minecraft:oak_sign run clone 1527 75 1890 1527 75 1890 1527 78 1890

execute unless entity @a[tag=Adult] unless block 1605 71 1958 minecraft:oak_sign{Text4:'{"text":"At Night"}'} run clone 1605 67 1958 1605 67 1958 1605 71 1958
execute if entity @a[tag=Adult] unless block 1605 71 1958 minecraft:oak_sign{Text4:'{"text":"Closed"}'} run clone 1605 67 1956 1605 67 1956 1605 71 1958

#Bean Spots
execute if entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean5] run clone 1613 76 1931 1615 76 1933 1612 75 1941
execute unless entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean5] run fill 1613 75 1942 1613 75 1942 minecraft:pumpkin_stem[age=6]

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone29] run summon minecraft:armor_stand 1651 82 1946 {Tags:["GossipStone29","GossipStone","Npc"],Rotation:[90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}

#Grottos
execute unless block 1500 35 1917 minecraft:gold_block if block 1499 35 1917 minecraft:gold_block run fill 1499 35 1917 1499 35 1917 minecraft:air
fill 1521 67 1927 1521 67 1927 minecraft:grass_block
fill 1546 51 1897 1546 51 1897 minecraft:grass
fill 1548 51 1890 1548 51 1890 minecraft:grass
fill 1546 51 1890 1546 51 1890 minecraft:grass
fill 1546 51 1892 1546 51 1892 minecraft:grass

#Silver Rock
execute if entity @s[tag=Adult] run fill 1560 78 1953 1561 79 1954 minecraft:dead_bubble_coral_block
execute unless entity @s[tag=Adult] run fill 1560 78 1953 1561 79 1954 minecraft:air
