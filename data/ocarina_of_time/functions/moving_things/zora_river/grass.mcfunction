#Grass
execute positioned 1527 79 2286 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot1] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned 1527 79 2286 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot1] run tag @s add Pot1
execute positioned 1499 49 2334 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot2] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned 1499 49 2334 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot2] if entity @e[type=item,distance=..0.5] run tag @s add Pot2
execute positioned 1501 49 2327 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot3] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned 1501 49 2327 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot3] if entity @e[type=item,distance=..0.5] run tag @s add Pot3
