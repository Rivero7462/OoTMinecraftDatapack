execute if entity @s[nbt={Inventory:[{tag:{Fairy:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run effect give @s minecraft:instant_health 1 20 true
execute if entity @s[nbt={Inventory:[{tag:{Fairy:1b}}]}] if entity @s[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Bottled Fairy\"}"},Unbreakable:1b,Damage:1,HideFlags:63,BottledFairy:1b,InventoryItem:1b}
execute if entity @s[nbt={Inventory:[{tag:{Fairy:1b}}]}] if entity @s[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run clear @s minecraft:glass_bottle 1
execute if entity @s[nbt={Inventory:[{tag:{Fairy:1b}}]}] run clear @s minecraft:shears{display:{Name:"{\"text\":\"Fairy\"}"},Unbreakable:1b,Damage:10,HideFlags:63,Fairy:1b,PickupItem:1b}

execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledFairy:1b}}}] run effect give @s minecraft:instant_health 1 20 true
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledFairy:1b}}}] run give @s minecraft:glass_bottle{display:{Name:"\"Bottle\""}}
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledFairy:1b}}}] run clear @s minecraft:carrot_on_a_stick{Unbreakable:1b,Damage:1,BottledFairy:1b} 1
