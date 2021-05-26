tellraw @a ["",{"text":"Frog:","color":"gold"},{"text":" Wow, that melody is so cool! Ribbit! Siiiiigin' in the pooooond! Oh, what a feeling! Rrrrrribbbit! Please take this as a token of our froggish gratitude, ribbit! All right. See you, ribbit!"}]
execute unless entity @s[tag=Prize2] run tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
execute unless entity @s[tag=Prize2] run give @a minecraft:golden_carrot{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b} 1
execute if entity @s[tag=Prize2] run give @a minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}
tag @s add Prize2
scoreboard players set @e[type=armor_stand,tag=Frog1] lifetime -1
