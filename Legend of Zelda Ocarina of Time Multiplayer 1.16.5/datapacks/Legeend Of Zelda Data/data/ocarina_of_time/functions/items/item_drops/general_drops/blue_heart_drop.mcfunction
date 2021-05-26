execute unless entity @a[tag=Adult] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[tag=Adult] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:lapis_lazuli",tag:{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}}}
kill @s
