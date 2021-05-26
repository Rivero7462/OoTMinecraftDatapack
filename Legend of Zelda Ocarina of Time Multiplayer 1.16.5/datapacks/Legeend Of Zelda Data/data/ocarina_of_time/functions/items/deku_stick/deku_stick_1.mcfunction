tag @s add LitTorch
tag @s remove UnlitTorch
fill ~ ~1 ~ ~ ~1 ~ minecraft:torch
data merge entity @s {HandItems:[{id:""}]}
give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Deku Stick\"}"},Unbreakable:1b,Damage:16,HideFlags:63,LitDekuStick:1b,Item:1b}
tag @a add BurnTime
