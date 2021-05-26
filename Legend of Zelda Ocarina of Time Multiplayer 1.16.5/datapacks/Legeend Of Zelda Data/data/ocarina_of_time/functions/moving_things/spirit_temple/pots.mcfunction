#Pots
execute positioned -24 82 887 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot1] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Magic Jar\"}"},Unbreakable:1b,Damage:5,HideFlags:63,BigJar:1b,PickupItem:1b,Item:1b}}}
execute positioned -24 82 887 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot1] if entity @e[type=item,distance=..0.5] run tag @s add Pot1
execute positioned -36 82 887 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot2] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute positioned -36 82 887 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot2] if entity @e[type=item,distance=..0.5] run tag @s add Pot2
execute positioned -68 87 834 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot3] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute positioned -68 87 834 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot3] run tag @e[type=zombie,tag=Anubis1] add Attack
execute positioned -68 87 834 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot3] if entity @e[type=item,distance=..0.5] run tag @s add Pot3
execute positioned -63 87 829 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot4] run tag @e[type=zombie,tag=Anubis1] add Attack
execute positioned -63 87 829 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot4] run tag @s add Pot4
execute positioned -60 87 826 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot5] run tag @e[type=zombie,tag=Anubis1] add Attack
execute positioned -60 87 826 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot5] run tag @s add Pot5
execute positioned -58 87 824 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot6] run tag @e[type=zombie,tag=Anubis1] add Attack
execute positioned -58 87 824 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot6] run tag @s add Pot6
execute positioned -66 88 852 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot7] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Deku Nuts\"}"}}},PickupDelay:0}
execute positioned -66 88 852 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot7] if entity @e[type=item,distance=..0.5] run tag @s add Pot7
execute positioned -60 88 852 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot8] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:tnt",tag:{display:{Name:"{\"text\":\"Bomb\"}"},BombPickup:1b,PickupItem:1b,Item:1b}}}
execute positioned -60 88 852 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot8] if entity @e[type=item,distance=..0.5] run tag @s add Pot8
execute positioned -64 88 842 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot9] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Ammo Drop 1\"}"},AmmoDrop:1b,Item:1b,Unbreakable:1b,Damage:19,HideFlags:63}}}
execute positioned -64 88 842 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot9] if entity @e[type=item,distance=..0.5] run tag @s add Pot9
execute positioned -75 113 903 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot10] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute positioned -75 113 903 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot10] if entity @e[type=item,distance=..0.5] run tag @s add Pot10
execute positioned -81 113 903 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot11] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute positioned -81 113 903 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot11] if entity @e[type=item,distance=..0.5] run tag @s add Pot11
execute positioned -20 98 879 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot12] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Fairy\"}"},Unbreakable:1b,Damage:10,HideFlags:63,Fairy:1b,PickupItem:1b}}}
execute positioned -20 98 879 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot12] if entity @e[type=item,distance=..0.5] run tag @s add Pot12
execute positioned -5 111 871 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot13] unless entity @e[type=item,distance=..0.5] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:tnt",tag:{display:{Name:"{\"text\":\"Bomb\"}"},BombPickup:1b,PickupItem:1b,Item:1b}}}
execute positioned -5 111 871 unless block ~ ~ ~ minecraft:flower_pot unless entity @s[tag=Pot13] if entity @e[type=item,distance=..0.5] run tag @s add Pot13