#Pots
execute positioned 2693 42 1980 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot1] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:lapis_lazuli",tag:{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}}}
execute positioned 2693 42 1980 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot1] if entity @e[type=item,distance=..0.5] run tag @s add Pot1
execute positioned 2694 42 1979 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot2] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Magic Jar\"}"},Unbreakable:1b,Damage:4,HideFlags:63,SmallJar:1b,PickupItem:1b,Item:1b}}}
execute positioned 2694 42 1979 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot2] if entity @e[type=item,distance=..0.5] run tag @s add Pot2
execute positioned 2686 42 1980 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot3] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup5:1b}}}
execute positioned 2686 42 1980 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot3] if entity @e[type=item,distance=..0.5] run tag @s add Pot3
execute positioned 2685 42 1979 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot4] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute positioned 2685 42 1979 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot4] if entity @e[type=item,distance=..0.5] run tag @s add Pot4
#Bug Grass
execute positioned 2728 19 1939 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot5] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned 2728 19 1939 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot5] if entity @e[type=item,distance=..0.5] run tag @s add Pot5
execute positioned 2730 19 1932 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot6] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned 2730 19 1932 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot6] if entity @e[type=item,distance=..0.5] run tag @s add Pot6
