tellraw @a ["",{"text":"Skull Kid:","color":"gold"},{"text":" That was quite a nice session. As a token of our friendship, please take this."}]
function ocarina_of_time:music/lost_woods
give @a minecraft:lime_dye{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b} 1
tag @s add Prize1
scoreboard players set @s lifetime 3011
