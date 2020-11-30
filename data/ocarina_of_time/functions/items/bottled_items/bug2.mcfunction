execute if entity @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Bottled Bug\"}"},Unbreakable:1b,Damage:2,HideFlags:63,BottledBug:1b}
execute if entity @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run tp @s ~ ~-5 ~
execute if entity @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run kill @s
execute if entity @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run clear @a minecraft:glass_bottle 1
