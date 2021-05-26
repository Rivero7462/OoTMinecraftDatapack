summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Big Fairy\"}"},Unbreakable:1b,Damage:33,HideFlags:63,BigFairy:1b,PickupItem:1b}}}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["BigFairy"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
kill @e[type=armor_stand,tag=GreenNavi]
tag @a remove GreenNaviSpot
