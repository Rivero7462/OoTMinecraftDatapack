scoreboard players remove @s RupeeCount 50
execute unless score @s RupeeCount matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute at @a store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @s RupeeCount
tag @s add Finish
