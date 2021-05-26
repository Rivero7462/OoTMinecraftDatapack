execute if entity @s[tag=CowMilk] if entity @e[type=cow,tag=Cow,distance=..3] unless entity @s[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run tellraw @a ["",{"text":"Cow: ","color":"gold"},{"text":"Moooooooooo! What a nice song... It reminds me of the pasture... That song makes me feel so good, I can produce a lot of milk! Oh, that's too bad. If you had something to put it in, I could give some to you..."}]

execute if entity @s[tag=CowMilk] if entity @e[type=cow,tag=Cow,distance=..3] if entity @s[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run tellraw @a ["",{"text":"Cow: ","color":"gold"},{"text":"Moooooooooo! What a nice song... It reminds me of the pasture... That song makes me feel so good, I can produce a lot of milk! Have some of my refreshing and nutritious milk!"}]
execute if entity @s[tag=CowMilk] if entity @e[type=cow,tag=Cow,distance=..3] if entity @s[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Lon Lon Milk\"}"},Unbreakable:1b,Damage:6,HideFlags:63,BottledMilk:1b}
execute if entity @s[tag=CowMilk] if entity @e[type=cow,tag=Cow,distance=..3] if entity @s[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run clear @s minecraft:glass_bottle 1

execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledMilk:1b}}}] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledMilk:1b}}}] run effect give @s minecraft:regeneration 1 4 true
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledMilk:1b}}}] run give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Lon Lon Milk\"}"},Unbreakable:1b,Damage:7,HideFlags:63,BottledHalfMilk:1b} 1
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledMilk:1b}}}] run clear @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Lon Lon Milk\"}"},Unbreakable:1b,Damage:6,HideFlags:63,BottledMilk:1b} 1

execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledHalfMilk:1b}}}] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledHalfMilk:1b}}}] run effect give @s minecraft:regeneration 1 4 true
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledHalfMilk:1b}}}] run give @s minecraft:glass_bottle{display:{Name:"\"Bottle\""}} 1
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledHalfMilk:1b}}}] run clear @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Lon Lon Milk\"}"},Unbreakable:1b,Damage:7,HideFlags:63,BottledHalfMilk:1b} 1
