#Bug Rock
execute unless entity @a[tag=Adult] positioned 2021 157 1349 unless block ~ ~ ~ minecraft:granite_slab unless entity @s[tag=Pot1] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute unless entity @a[tag=Adult] positioned 2021 157 1349 unless block ~ ~ ~ minecraft:granite_slab unless entity @s[tag=Pot1] run tag @s add Pot1

#Bug Grass
execute positioned 2019 67 1442 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot2] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned 2019 67 1442 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot2] if entity @e[type=item,distance=..0.5] run tag @s add Pot2
execute positioned 2021 67 1435 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot3] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned 2021 67 1435 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot3] if entity @e[type=item,distance=..0.5] run tag @s add Pot3
