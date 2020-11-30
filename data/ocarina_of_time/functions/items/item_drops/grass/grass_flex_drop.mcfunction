execute if entity @a[scores={Health=1..2}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Fairy\"}"},Unbreakable:1b,Damage:10,HideFlags:63,Fairy:1b,PickupItem:1b}}}
execute if entity @a[scores={Health=3..5}] run summon minecraft:item ~.1 ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[scores={Health=3..5}] run summon minecraft:item ~ ~ ~-.1 {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[scores={Health=3..5}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[scores={Health=6,Hearts=1..}] run summon minecraft:item ~.1 ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[scores={Health=6,Hearts=1..}] run summon minecraft:item ~ ~ ~-.1 {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[scores={Health=6,Hearts=1..}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[scores={Health=6,Hearts=0}] run summon minecraft:item ~.1 ~ ~ {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @a[scores={Health=6,Hearts=0}] run summon minecraft:item ~ ~ ~-.1 {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @a[scores={Health=6,Hearts=0}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @a[scores={Health=7}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[scores={Health=8,Hearts=2..}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[scores={Health=8,Hearts=1}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @a[scores={Health=9}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[scores={Health=10,Hearts=3..}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[scores={Health=10,Hearts=2}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @a[scores={Health=11..},level=0] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Magic Jar\"}"},Unbreakable:1b,Damage:4,HideFlags:63,SmallJar:1b,PickupItem:1b,Item:1b}}}

#Child
execute unless entity @a[tag=Adult] if entity @a[tag=Slingshot,scores={Health=11..,DekuSeeds2=..5},level=1..] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Deku Seeds (5)\"}"},Unbreakable:1b,Damage:15,HideFlags:63,DekuSeedPickup1:1b,DekuSeedPickup:1b,PickupItem:1b,Item:1b}}}
execute unless entity @a[tag=Adult] if entity @a[tag=Bombs,scores={Health=11..,DekuSeeds2=6..,BombCount=..5},level=1..] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:tnt",tag:{display:{Name:"{\"text\":\"Bomb\"}"},BombPickup:1b,PickupItem:1b,Item:1b}}}
execute unless entity @a[tag=Adult] if entity @a[scores={Health=11..,DekuSeeds2=6..,BombCount=6..,RupeeCount=..10},level=1..] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:red_dye",tag:{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}}}
#Adult
execute if entity @a[tag=Adult,tag=FairyBow,scores={Health=11..,ArrowCount2=..5},level=1..] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup5:1b}}}
execute if entity @a[tag=Adult,tag=Bombs,scores={Health=11..,ArrowCount2=6..,BombCount=..5},level=1..] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:tnt",tag:{display:{Name:"{\"text\":\"Bomb\"}"},BombPickup:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[tag=Adult,scores={Health=11..,ArrowCount2=6..,BombCount=6..,RupeeCount=..10},level=1..] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:red_dye",tag:{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}}}
kill @s
