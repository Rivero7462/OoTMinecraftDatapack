#Bug Rocks
execute positioned 900 75 938 unless block ~ ~ ~ minecraft:granite_slab unless entity @s[tag=Pot1] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned 900 75 938 unless block ~ ~ ~ minecraft:granite_slab unless entity @s[tag=Pot1] run tag @s add Pot1
execute positioned 923 57 902 unless block ~ ~ ~ minecraft:granite_slab unless entity @s[tag=Pot2] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned 923 57 902 unless block ~ ~ ~ minecraft:granite_slab unless entity @s[tag=Pot2] run tag @s add Pot2
execute positioned 927 57 902 unless block ~ ~ ~ minecraft:granite_slab unless entity @s[tag=Pot3] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned 927 57 902 unless block ~ ~ ~ minecraft:granite_slab unless entity @s[tag=Pot3] run tag @s add Pot3

#Pots
execute positioned 926 57 909 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot4] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:red_dye",tag:{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}}}
execute positioned 926 57 909 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot4] if entity @e[type=item,distance=..0.5] run tag @s add Pot4
execute positioned 924 57 908 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot5] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Deku Seeds (5)\"}"},Unbreakable:1b,Damage:15,HideFlags:63,DekuSeedPickup1:1b,DekuSeedPickup:1b,PickupItem:1b,Item:1b}}}
execute positioned 924 57 908 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot5] if entity @e[type=item,distance=..0.5] run tag @s add Pot5
execute positioned 926 57 906 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot6] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:tnt",tag:{display:{Name:"{\"text\":\"Bomb\"}"},BombPickup:1b,PickupItem:1b,Item:1b}}}
execute positioned 926 57 906 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot6] if entity @e[type=item,distance=..0.5] run tag @s add Pot6
execute positioned 924 57 905 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot7] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Deku Nuts\"}"}}},PickupDelay:0}
execute positioned 924 57 905 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot7] if entity @e[type=item,distance=..0.5] run tag @s add Pot7
