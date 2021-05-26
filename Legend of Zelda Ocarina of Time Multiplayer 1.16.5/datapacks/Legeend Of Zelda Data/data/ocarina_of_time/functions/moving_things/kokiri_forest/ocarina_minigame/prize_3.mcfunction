tellraw @a ["",{"text":"Skull Kid:","color":"gold"},{"text":" That was quite a nice session. As a token of our friendship, please take this."}]
function ocarina_of_time:music/lost_woods
tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
give @a minecraft:golden_carrot{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b} 1
tag @s add Prize3
scoreboard players set @s lifetime 3011
