execute unless entity @s[tag=Grow] run data merge entity @s {Small:0b}
execute unless entity @s[tag=Grow] run tp @s ~ ~-.7 ~
tag @s add Grow
tellraw @a ["",{"text":"Frog:","color":"gold"},{"text":" Young lad, you play the ocarina well... Mmmmm...! That melody is so fine...ribbit! We all should practice it, ribbit! Take Rupees as a souvenir! If you come up with another nice melody, please drop by and play it... Ribbit ribbit!"}]
execute unless entity @s[tag=Prize1] run give @a minecraft:purple_dye{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b}
execute if entity @s[tag=Prize1] run give @a minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}
tag @s add Prize1
scoreboard players set @s lifetime -1
