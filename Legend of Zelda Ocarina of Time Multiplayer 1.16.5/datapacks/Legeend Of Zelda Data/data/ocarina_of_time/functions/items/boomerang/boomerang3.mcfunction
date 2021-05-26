give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Boomerang\"}"},Unbreakable:1b,Damage:8,HideFlags:63,Boomerang:1b}
tag @a remove ThrowBoomerang
tag @a remove BoomerangMode
kill @e[type=armor_stand,tag=BoomerangStart]
kill @e[type=armor_stand,tag=Boomerang]
