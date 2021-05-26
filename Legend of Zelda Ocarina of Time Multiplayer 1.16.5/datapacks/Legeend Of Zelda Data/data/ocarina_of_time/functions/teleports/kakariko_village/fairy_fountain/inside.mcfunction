function ocarina_of_time:music/dodongo_cavern
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/kakariko_village/enemies
function ocarina_of_time:teleports/kakariko_village/loot_reset
execute if entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Hylian Shield\""}}}]}] if block 1598 34 1992 minecraft:chest{Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b,Damage:2,display:{Name:"\"Hylian Shield\""}}}]} run data merge block 1598 34 1992 {Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]}
execute unless entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Hylian Shield\""}}}]}] if block 1598 34 1992 minecraft:chest{Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]} run data merge block 1598 34 1992 {Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b,Damage:2,display:{Name:"\"Hylian Shield\""}}}]}
function ocarina_of_time:teleports/kakariko_village/grave_reset
summon minecraft:item 1623 33 1977 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Fairy\"}"},Unbreakable:1b,Damage:10,HideFlags:63,Fairy:1b,PickupItem:1b}},PickupDelay:0}
summon minecraft:item 1623 33 1981 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Fairy\"}"},Unbreakable:1b,Damage:10,HideFlags:63,Fairy:1b,PickupItem:1b}},PickupDelay:0}
summon minecraft:item 1626 33 1983 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Fairy\"}"},Unbreakable:1b,Damage:10,HideFlags:63,Fairy:1b,PickupItem:1b}},PickupDelay:0}
summon minecraft:item 1626 33 1980 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Fairy\"}"},Unbreakable:1b,Damage:10,HideFlags:63,Fairy:1b,PickupItem:1b}},PickupDelay:0}
summon minecraft:item 1626 33 1978 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Fairy\"}"},Unbreakable:1b,Damage:10,HideFlags:63,Fairy:1b,PickupItem:1b}},PickupDelay:0}
summon minecraft:item 1626 33 1975 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Fairy\"}"},Unbreakable:1b,Damage:10,HideFlags:63,Fairy:1b,PickupItem:1b}},PickupDelay:0}
summon minecraft:item 1629 33 1977 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Fairy\"}"},Unbreakable:1b,Damage:10,HideFlags:63,Fairy:1b,PickupItem:1b}},PickupDelay:0}
summon minecraft:item 1629 33 1981 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Fairy\"}"},Unbreakable:1b,Damage:10,HideFlags:63,Fairy:1b,PickupItem:1b}},PickupDelay:0}
tag @a add Indoors
tp @s 1598 35.5 2005 180 ~
