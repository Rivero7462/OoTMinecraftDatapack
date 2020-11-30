execute positioned -576 51 -598 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot1] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Heart\"}"}}},PickupDelay:0}
execute positioned -576 51 -598 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot1] if entity @e[type=item,distance=..0.5] run tag @s add Pot1
execute positioned -541 54 -613 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot2] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:lime_dye,Count:1,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},PickupDelay:0}
execute positioned -541 54 -613 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot2] if entity @e[type=item,distance=..0.5] run tag @s add Pot2
execute positioned -541 54 -609 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot3] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:lapis_lazuli,Count:1,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},PickupDelay:0}
execute positioned -541 54 -609 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot3] if entity @e[type=item,distance=..0.5] run tag @s add Pot3
execute positioned -602 57 -617 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot4] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:lime_dye,Count:1,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},PickupDelay:0}
execute positioned -602 57 -617 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot4] if entity @e[type=item,distance=..0.5] run tag @s add Pot4
execute positioned -608 57 -615 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot5] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:lime_dye,Count:1,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},PickupDelay:0}
execute positioned -608 57 -615 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot5] if entity @e[type=item,distance=..0.5] run tag @s add Pot5

#Blue Rupee Sign
execute unless entity @a[tag=Adult] positioned -585 69 -611 unless block ~ ~ ~ minecraft:oak_sign unless entity @s[tag=Pot6] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:lapis_lazuli,Count:1,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},PickupDelay:0}
execute unless entity @a[tag=Adult] positioned -585 69 -611 unless block ~ ~ ~ minecraft:oak_sign unless entity @s[tag=Pot6] if entity @e[type=item,distance=..0.5] run tag @s add Pot6

#Bug Grass
execute positioned -580 75 -680 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot6] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned -580 75 -680 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot6] if entity @e[type=item,distance=..0.5] run tag @s add Pot6
execute positioned -563 75 -712 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot7] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned -563 75 -712 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot7] if entity @e[type=item,distance=..0.5] run tag @s add Pot7
execute positioned -577 41 -652 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot8] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned -577 41 -652 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot8] if entity @e[type=item,distance=..0.5] run tag @s add Pot8
execute positioned -575 41 -659 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot9] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned -575 41 -659 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot9] if entity @e[type=item,distance=..0.5] run tag @s add Pot9
execute positioned -571 47 -683 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot10] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned -571 47 -683 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot10] if entity @e[type=item,distance=..0.5] run tag @s add Pot10
execute positioned -569 47 -690 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot11] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute positioned -569 47 -690 unless block ~ ~ ~ minecraft:grass unless entity @s[tag=Pot11] if entity @e[type=item,distance=..0.5] run tag @s add Pot11
