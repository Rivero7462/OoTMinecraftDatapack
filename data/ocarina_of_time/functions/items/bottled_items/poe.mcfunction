#Health Options
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledPoe:1b}}}] if entity @a[scores={Health=1..2}] run effect give @a minecraft:regeneration 1 4 true
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledPoe:1b}}}] if entity @a[scores={Health=3..4}] run effect give @a minecraft:regeneration 3 1 true
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledPoe:1b}}}] if entity @a[scores={Health=5..}] run effect give @a minecraft:wither 2 1 true

execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledPoe:1b}}}] run give @s minecraft:glass_bottle{display:{Name:"\"Bottle\""}}
execute if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledPoe:1b}}}] run clear @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Poe\"}"},Unbreakable:1b,Damage:4,HideFlags:63,BottledPoe:1b}
