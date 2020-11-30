execute if entity @s[nbt={Inventory:[{tag:{Bug:1b}}]}] if entity @s[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Bottled Bug\"}"},Unbreakable:1b,Damage:2,HideFlags:63,BottledBug:1b}
execute if entity @s[nbt={Inventory:[{tag:{Bug:1b}}]}] if entity @s[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run clear @s minecraft:glass_bottle 1
execute if entity @s[nbt={Inventory:[{tag:{Bug:1b}}]}] run clear @s minecraft:shears{display:{Name:"{\"text\":\"Bug\"}"},Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b}

execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledBug:1b}}}] anchored eyes run summon minecraft:turtle ^ ^ ^1 {Tags:["FakeBug"],Silent:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Age:-24000,Invulnerable:1}
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledBug:1b}}}] run give @s minecraft:glass_bottle{display:{Name:"\"Bottle\""}}
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledBug:1b}}}] run clear @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Bottled Bug\"}"},Unbreakable:1b,Damage:2,HideFlags:63,BottledBug:1b} 1
