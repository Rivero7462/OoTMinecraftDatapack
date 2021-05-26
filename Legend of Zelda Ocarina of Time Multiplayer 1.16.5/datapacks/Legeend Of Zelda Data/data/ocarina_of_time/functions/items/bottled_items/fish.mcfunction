execute if entity @s[nbt={Inventory:[{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]}] unless entity @e[type=cod,distance=..3] run give @s minecraft:glass_bottle{display:{Name:"{\"text\":\"Bottle\"}"}}

execute if entity @s[nbt={Inventory:[{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]}] if entity @e[type=cod,distance=..3] run give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Fish\"}"},Unbreakable:1b,Damage:3,HideFlags:63,BottledFish:1b}
execute if entity @s[nbt={Inventory:[{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]}] if entity @e[type=cod,distance=..3] run kill @e[type=cod,sort=nearest,limit=1]
execute if entity @s[nbt={Inventory:[{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]}] if entity @e[type=cod,distance=..3] run clear @s minecraft:potion{Potion:"minecraft:water"}

execute if entity @s[nbt={Inventory:[{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]}] unless entity @e[type=cod,distance=..3] run clear @s minecraft:potion{Potion:"minecraft:water"}

#Empty Bottle
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledFish:1b}}}] anchored eyes run summon minecraft:cod ^ ^ ^1 {Tags:["Bottled"],DeathLootTable:"ocarina_of_time:entities/nothing",Invulnerable:1}
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledFish:1b}}}] run give @s minecraft:glass_bottle{display:{Name:"\"Bottle\""}}
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledFish:1b}}}] run clear @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Fish\"}"},Unbreakable:1b,Damage:3,HideFlags:63,BottledFish:1b} 1
