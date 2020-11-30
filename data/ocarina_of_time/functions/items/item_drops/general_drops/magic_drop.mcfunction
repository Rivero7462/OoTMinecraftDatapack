execute unless entity @a[tag=Adult] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Magic Jar\"}"},Unbreakable:1b,Damage:4,HideFlags:63,SmallJar:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[tag=Adult] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Magic Jar\"}"},Unbreakable:1b,Damage:5,HideFlags:63,BigJar:1b,PickupItem:1b,Item:1b}}}
kill @s
