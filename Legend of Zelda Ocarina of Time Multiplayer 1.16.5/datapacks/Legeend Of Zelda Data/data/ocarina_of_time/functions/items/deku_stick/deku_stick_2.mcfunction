scoreboard players add @s DekuStickTimer 1
execute if entity @s[scores={DekuStickTimer=200..}] run clear @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Deku Stick\"}"},Unbreakable:1b,Damage:16,HideFlags:63,LitDekuStick:1b,Item:1b}
execute if entity @s[scores={DekuStickTimer=200..}] run tag @s remove BurnTime
execute if entity @s[scores={DekuStickTimer=200..}] run scoreboard players set @s DekuStickTimer 0
execute if entity @s[scores={DekuStickTimer=..200}] if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run function ocarina_of_time:items/deku_stick/deku_stick_3
execute if block ~ ~1 ~ minecraft:water if entity @s[nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run function ocarina_of_time:items/deku_stick/deku_stick_3
