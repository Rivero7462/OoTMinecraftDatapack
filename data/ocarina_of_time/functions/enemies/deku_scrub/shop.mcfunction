execute if entity @s[nbt={Offers:{Recipes:[{uses:1}]}}] run kill @e[type=armor_stand,tag=BusinessScrub,distance=..2,sort=nearest,limit=1]
execute if entity @s[nbt={Offers:{Recipes:[{uses:1}]}}] run summon minecraft:item ~.1 ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @s[nbt={Offers:{Recipes:[{uses:1}]}}] run summon minecraft:item ~ ~ ~-.1 {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @s[nbt={Offers:{Recipes:[{uses:1}]}}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @s[nbt={Offers:{Recipes:[{uses:1}]}}] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"Thank you very much!"}]
execute if entity @s[nbt={Offers:{Recipes:[{uses:1}]}}] run tp @s ~ ~-5 ~
execute if entity @s[nbt={Offers:{Recipes:[{uses:1}]}}] run kill @s
