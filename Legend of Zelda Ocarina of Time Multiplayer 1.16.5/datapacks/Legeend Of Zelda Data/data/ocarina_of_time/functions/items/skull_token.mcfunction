tellraw @a ["",{"text":"You destroyed a "},{"text":"Gold Skulltula","color":"red"},{"text":". You got a token proving you destroyed it!","color":"white"}]
scoreboard players add @a GoldenSkullToken 1
function ocarina_of_time:items/advancements/gold_skulltulas
clear @a minecraft:gold_ingot 1
